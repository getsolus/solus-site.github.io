+++
author = "ikey"
categories = [
"News"
]
date =  "2014-12-15T14:48:45Z"

title = "Networking Breakage in Evolve OS"
url = "/2014/12/15/networking-breakage-in-evolve-os/"
+++

Hello all,

I'm sorry to report that yesterday a broken NetworkManager package was pushed to the repositories, which may have resulted in some of you now 
having no networking. The package has been reverted to an earlier snapshot, however if you have been affected there is a way to revert the damage.

### Sideloading

I have provided permanent copies of the .eopkg's on our server for the purpose of sideloading, you can download the appropriate .eopkg from here:

Copy this .eopkg across to your Evolve OS installation using a USB stick or similar, and execute this command in your terminal:

```
sudo eopkg install network-manager-0.9.8.6-9-1-x86_64.eopkg
```

### Cache Restoration

Assuming you have not deleted your eopkg cache in all your updates, you may still have an older version of the network-manager package available. The culprit package is:

```
network-manager-0.9.8.6-10-1-x86_64.eopkg
```

If you have an older version of this package in "/var/cache/eopkg/archives/" then please just use this .eopkg, using the same method as described above.

### Note

If you have the network-manager-devel package installed, you will also need to download the appropriate -devel package from the NM/ directory (or cache) and use 
a glob to install both packages together:

```
sudo eopkg install network-manager-*.eopkg
```


### Lastly
Apologies for this setback in stability, the package was incorrectly included into the mainline repository and not the testing repository. I can assure you this will not happen again.
