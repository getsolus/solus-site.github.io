---
title: Editions
layout: hextra-home
width: wide
toc: false
---

<div class="mx-auto mt-6 mb-4">
{{< hextra/hero-headline >}}
Install today. Updates forever.
{{< /hextra/hero-headline >}}
</div>

<div class="mx-auto mt-4 mb-4">
  {{< hextra/hero-subtitle >}}
  Simply choose an edition!
  {{< /hextra/hero-subtitle >}}
</div>

<div class="mb-4">
  {{< editions-list >}}
</div>

{{< hextra/hero-container
  image="/imgs/verified.svg"
  imageTitle="Verified"
  imageWidth="250"
>}}
  {{< hextra/hero-headline >}}
  Verification
  {{< /hextra/hero-headline >}}

  <p class="not-prose mt-4">
    It is important to verify the ISO image file you downloaded. Ensuring that the image hash matches, and that the signature
    can be decoded with our public key, lets you know that the file is not corrupted or tampered with in transit. Performing
    the verification is quick and easy, and gives you some extra assurance about your download. It also helps those giving
    support for installation issues by ruling out a failed or corrupted download.
  </p>

  <div class="mt-4">
    {{< hextra/hero-button text="Learn more" link="https://help.getsol.us/docs/user/quick-start/installation/#verifying-the-iso" >}}
  </div>
{{< /hextra/hero-container >}}
