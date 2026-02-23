---
layout: solus
title: Editions
toc: false
---

{{< page-header title="Install today. Updates forever." subtitle="Simply choose an edition!" >}}

{{< section >}}
{{< editions-list >}}
{{</ section >}}

{{< section heading="Installation" >}}
  <div class="text-lg leading-[1.8]">
    <p>For information on how to install Solus, read through our {{< link to="https://help.getsol.us/docs/user/quick-start/installation/" text="installation documentation" >}} on our Help Center. If you need assistance, or have any questions, please reach out to us on {{< link to="https://matrix.to/#/#solus:matrix.org" text="Matrix" >}} or our {{< link to="https://discuss.getsol.us" text="forum" >}}, where you can get help from us, and our amazing community.</p>
  </div>
{{</ section >}}

{{< section heading="System Requirements" alt=true borderTop=true >}}
  <div class="text-lg leading-[1.8]">
    <p>In order to install Solus, your system must meet the minimum system requirements. Ideally it should meet or exceed the recommended values for a better experience. More information about system requirements can be found on our {{< link to="https://help.getsol.us/docs/user/quick-start/installation/system-requirements/" text="Help Center" >}}.</p>
    <div class="mt-8">
      {{< requirements-table >}}
    </div>
  </div>
{{</ section >}}

{{< section heading="Verification" borderTop=true >}}
  <div class="grid grid-cols-1 md:grid-cols-2 gap-10 max-w-screen-2xl">
    <div class="grid-cols-1 flex flex-col text-lg leading-[1.8]">
      <p>It is important to verify the ISO image file you downloaded. Ensuring that the image hash matches, and that the signature can be decoded with our public key, lets you know that the file is not corrupted or tampered with in transit. Performing the verification is quick and easy, and gives you some extra assurance about your download. It also helps those giving support for installation issues by ruling out a failed or corrupted download.</p>
    </div>
    <img src="/imgs/verified.svg" alt="Verified" class="col-span-1 flex items-center justify-center mx-auto" />
  </div>

  <div class="spacing-1 mt-6 flex flex-row flex-wrap justify-start gap-4">
    {{< button
      link="https://help.getsol.us/docs/user/quick-start/installation/#verifying-the-iso"
      text="Learn More"
    >}}
    {{< button
      link="https://downloads.getsol.us/gpg/solus-releng-pub.gpg"
      text="Public Key"
      primary=true
    >}}
  </div>
{{</ section >}}
