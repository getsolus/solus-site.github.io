---
date: "2025-09-12"
title: Technology
toc: false
---

Solus is built using a variety of technologies. Our tooling is primarily Python and Golang based, with a little smattering of Bash. These tools make it easier for us to create and build packages, deploy a repository of packages, and more.

## eopkg

The package manager on Solus is [`eopkg`](https://github.com/getsolus/eopkg). A fork of the PiSi Package Manager, originally from Pardus Linux, it has been adapted and maintained during the lifetime of SolusOS, EvolveOS and Solus. It is written in Python 3. Features include basic package management like installing and removing packages from the system, searching and viewing information for packages, rolling back package management operations, and more.

## ypkg

This is our primary build tool. Written in Python 3, [`ypkg`](https://github.com/getsolus/ypkg) evolved from a basic set of ideas within the Solus project: that packaging should be simple. Given rules should be obeyed globally, and where appropriate, the packager should be able to tweak the results to how they desire.

As a result, `ypkg` provides a highly intuitive, simple, yet incredibly powerful package building system, which follows the Solus philosophy of sane defaults, and hidden power under the surface. `ypkg` is capable of many build types, multilib, automatic & intelligent package splitting, choice compiler optimisations, standardised GDB-compatible debug info packages, automatic dependency resolution, and much more.

Here is an example `package.yml` file used to build a package with `ypkg`:

```yaml
name       : nano
version    : '8.6'
release    : 206
source     :
    - https://www.nano-editor.org/dist/v8/nano-8.6.tar.xz : f7abfbf0eed5f573ab51bd77a458f32d82f9859c55e9689f819d96fe1437a619
homepage   : https://www.nano-editor.org
license    : GPL-3.0-or-later
component  : system.devel
summary    : Small, friendly text editor inspired by Pico
description: |
    GNU nano is an easy-to-use text editor originally designed as a replacement for Pico, the ncurses-based editor from the non-free mailer package Pine (itself now available under the Apache License as Alpine).
mancompress: yes
builddeps  :
    - nano-syntax-highlighting
rundeps    :
    - nano-syntax-highlighting
setup      : |
    %patch -p1 -i $pkgfiles/0001-Use-a-stateless-configuration.patch
    %configure \
               --docdir=/usr/share/doc/nano \
               --enable-utf8
build      : |
    %make
install    : |
    %make_install
    # Include syntax definitions
    for rcfile in $installdir/usr/share/nano/*.nanorc; do
        echo include /usr/share/nano/${rcfile##*nano/} >> $pkgfiles/nanorc
    done
    # Include missing definitions from scopatz's files
    for rcfile in /usr/share/nanorc/*.nanorc; do
        if ! grep -Fq ${rcfile#*highlighting/} $pkgfiles/nanorc
        then
            echo include "$rcfile" >> $pkgfiles/nanorc
        fi
    done
    install -Dm00644 $pkgfiles/nanorc $installdir/usr/share/defaults/nano/nanorc
    # Ensure that nano is set up as default EDITOR and VISUAL
    install -Dm00644 $pkgfiles/81-nano-is-default-EDITOR-and-VISUAL.sh $installdir/usr/share/defaults/etc/profile.d/81-nano-is-default-EDITOR-and-VISUAL.sh
    install -Dm00644 $pkgfiles/81-nano-is-default-EDITOR-and-VISUAL.fish $installdir/usr/share/defaults/etc/profile.d/81-nano-is-default-EDITOR-and-VISUAL.fish
```

## Solbuild

Written in Go, [`solbuild`](https://github.com/getsol/solbuild) is a `chroot`-based package build system, used to safely and efficiently build Solus packages from source, in a highly controlled and isolated environment. This tool succeeds the `evobuild` tool, originally in Evolve OS, which is now known as Solus. The very core concept of the layered builder has always remained the same, this is the next... evolution... of the tool. `solbuild` sets up the build environment, calls [`ypkg`](#ypkg) to build a package, creates an ABI report when relevant using [`abi-wizard`](#abi-wizard), and handles cleanup.

{{< asciinema
  file="/videos/solbuild-demo.cast"
  theme="dracula"
>}}

`solbuild` makes use of `OverlayFS` to provide a simple caching system, whereby a base image (provided by the Solus project) is used as the bottom-most, read-only layer, and changes are made in temporary upper layers.

## abi-wizard

A tool for generating ABI reports for libraries and binaries. As a package maintainer, it's a challenging task to keep track of binary dependencies and ABI changes. [`abi-wizard`](https://github.com/getsol/abi-wizard) generates reports that can be used to inform maintainers of ABI and dependency changes.

## ferryd

This is the binary repository manager for Solus created with Go. In addition to providing basic management for repositories, it is also an asynchronous job-based daemon, processing incoming package uploads from authorised builder machines. [`ferryd`](https://github.com/getsolus/ferryd) attempts to optimise all operations ahead of time, by caching all metadata required for repository indexes.

The primary goal for `ferryd` is to provide a daemon that constantly monitors new uploads, and processes them as fast as possible. This ensures new packages are available almost immediately. Complex, long running operations are run in the background within a dedicated worker pool. This allows new packages to turn up in batch, and the delta packages to be produced lazily. Once those delta packages are available, they're inserted into the main repository (and will appear in the index.)

The design of `ferryd` allows us to blit a repository index from the database to disk very fast (around 2-3s for a large repository). Special care is taken to only perform atomic updates to the index, meaning no connectivity issues for clients with corrupt or partial indexes. The repository index should always be available, and all published packages should permanently be present.

Lastly, `ferryd` aims to provide very simple sync abilities to help control deployment of packages to other repositories. An explicit design goal is to enable "pulling" a repository into an existing repository, which in turn publishes one channel to another. This is used in Solus to control sync-windows from unstable to stable, and is done as a single atomic operation.
