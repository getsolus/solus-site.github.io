---
layout: solus
title: Editions
toc: false
---

<div class="max-w-[90rem] mx-auto px-4 md:px-0">
    <section class="w-full py-10 md:py-12 lg:py-14 text-center">
        <h1 class="text-4xl md:text-5xl font-semibold leading-tight mb-5">Install today. Updates forever.</h1>
        <p class="text-lg md:text-xl italic text-neutral-500 dark:text-neutral-400 leading-relaxed max-w-2xl">Simply choose an edition!</p>
    </section>
</div>

{{< section >}}
{{< editions-list >}}
{{</ section >}}

{{< section heading="System Requirements" alt=true borderTop=true >}}
  <div class="text-lg leading-relaxed">
    <p>The minimum and recommended system requirements to run Solus can be found on our
      <a class="text-[color:hsl(var(--primary-hue),100%,50%)] underline underline-offset-2 decoration-from-font" href="https://help.getsol.us/docs/user/quick-start/installation/system-requirements/" target="_blank" rel="noopener">Help Center <svg class="inline rtl:rotate-270 align-baseline" height="1em" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="m9.1716 7.7574h7.0711m0 0v7.0711m0-7.0711-8.4853 8.4853" stroke-linecap="round" stroke-linejoin="round"></path></svg></a>.</p>
  </div>
{{</ section >}}

{{< section heading="Verification" borderTop=true >}}
  <div class="grid grid-cols-1 md:grid-cols-2 gap-10 max-w-screen-2xl">
    <div class="grid-cols-1 flex flex-col text-lg leading-relaxed">
      <p>It is important to verify the ISO image file you downloaded. Ensuring that the image hash matches, and that the signature can be decoded with our public key, lets you know that the file is not corrupted or tampered with in transit. Performing the verification is quick and easy, and gives you some extra assurance about your download. It also helps those giving support for installation issues by ruling out a failed or corrupted download.</p>
    </div>
    <img src="/imgs/verified.svg" alt="Verified" class="col-span-1 flex items-center justify-center mx-auto" />
  </div>

  <div class="spacing-1 mt-5 flex flex-row flex-wrap justify-start gap-4">
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
