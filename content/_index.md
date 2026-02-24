---
layout: solus
title: Solus
toc: false
---

{{< page-header title="The Personal OS for Personal Computers" subtitle="A modern Open Source operating system to power your daily needs. Install today, update forever." >}}

<div class="pb-10 md:pb-12 lg:pb-14 w-screen max-w-full pt-6 relative z-0 pb-8">
  <div class="my-5 flex justify-center">
    <div class="w-full max-w-5xl mx-auto">
      <div class="relative block mt-5 mb-3 mx-auto">
        <img class="relative" src="/imgs/laptop-frame.webp" alt="Laptop frame without a screen picture" width="2000" height="1220" />
        <div class="absolute top-[4%] left-1/2 w-[82%] -translate-x-1/2">
          <picture>
            <img class="w-full rounded" src="/imgs/laptop-image.webp" alt="Budgie Desktop with no applications open" width="750" height="422" />
          <picture>
        </div>
      </div>
    </div>
  </div>

  <div class="spacing-1 mt-8 flex flex-row flex-wrap justify-center gap-4">
    {{< button
      link="https://help.getsol.us"
      text="Help Center"
      icon="book-open"
    >}}
    {{< button
      link="/download"
      text="Download"
      icon="download"
      primary=true
    >}}
  </div>
</div>

{{< glass-section heading="Core Features" >}}
{{< bulletpoint title="Rolling Release" description="Access the latest software updates without system reinstalls." borderBottom=false reducedPadding=true >}}
{{< bulletpoint title="Curated" description="Our package repository is curated to provide a stable experience." borderBottom=false reducedPadding=true >}}
{{< bulletpoint title="Stable" description="Updates are pushed to users weekly after undergoing testing." borderBottom=false reducedPadding=true >}}
{{< bulletpoint title="Sane Defaults" description="Software works out-of-the-box, so you spend less time configuring." borderBottom=false reducedPadding=true >}}
{{</ glass-section >}}

{{< section heading="Designed for Everyone" >}}
<div class="max-w-screen-2xl">
  <div class="flex flex-col gap-5 leading-7 mb-6">
    <p>Solus provides a multitude of experiences that enable you to get the most out of your hardware. From our curated Budgie experience for modern devices, to the more traditional Xfce experience for lower-end devices, Solus aims to provide the best experience for your device.</p>
    <p>Our distribution ships with a variety of software out of the box so you can get going without a lot of setup fuss. Less setup means you can get started using your computer quicker.</p>
  </div>
</div>

<div class="grid grid-cols-1 md:grid-cols-2 gap-2 md:gap-6 lg:gap-10 mt-8 max-w-screen-2xl">
  <div class="col-span-1 flex items-center justify-center mt-8">
    <img src="/imgs/solus-screenshot-kate.webp" alt="For developers" />
  </div>
  <div class="grid-cols-1 flex flex-col leading-[1.8]">
    <h3 class="text-lg font-semibold mt-8">For Developers</h3>
    <div class="flex flex-col gap-5 leading-7">
      <p class="mt-6">With Solus, you can spend less time setting up tooling, and more time coding. We support a wide variety of editors, programming languages, compilers, and version control systems, as well as containerization / virtualization technology such as <b>Docker</b> and <b>Podman</b>. Whether you're writing drivers in <b>C</b>, or writing backend web services in <b>Go</b>, Solus is a great option for developers.</p>
      <p class="mt-6">We support several different options for software development environments. Full-featured graphical editors such as <b>Kate</b>, <b>VS Code</b>, <b>Zed</b>, and <b>Builder</b>, and <b>KDevelop</b> are all available from the Solus package repository. If terminal editors are more your thing, Solus has that, too, with packages for <b>Vim</b>, <b>Neovim</b>, and <b>Helix</b>.</p>
    </div>
  </div>
</div>

<div class="grid grid-cols-1 md:grid-cols-2 gap-10 mt-8 max-w-screen-2xl">
  <div class="col-span-1 flex items-center justify-center mt-8">
    <img src="/imgs/solus-screenshot-game.webp" alt="For gamers" />
  </div>
  <div class="grid-cols-1 flex flex-col lg:order-first">
    <h3 class="text-lg font-semibold mt-8">For Gamers</h3>
    <div class="flex flex-col gap-5 leading-7">
      <p class="mt-6">Many fantastic open source games are available natively for Solus, with many more available through <b>Steam</b>, <b>Proton</b>, and <b>Heroic Games Launcher</b>. Many gamepads will work right away, and support customization software like <b>AntiMicroX</b>. Within minutes, you can be playing all your own Steam titles for Linux, with a modern and optimized gaming runtime, and no setup hassles. Many open source games can be found in the Solus repository, including <b>Freeciv</b>, <b>OpenTTD</b>, <b>Red Eclipse</b>, and <b>Warzone 2100</b>.</p>
      <p class="mt-6">Solus is lightweight and snappy, meaning that when it's game time, you can be confident that your system resources are available and ready to go. You won't be let down by other processes making your system feel sluggish.</p>
    </div>
  </div>
</div>

<div class="grid grid-cols-1 md:grid-cols-2 gap-10 mt-8 max-w-screen-2xl">
  <div class="col-span-1 flex items-center justify-center not-prose mt-8">
    <figure>
      <img src="/imgs/solus-screenshot-inkscape.webp" alt="For content creators" />
      <figcaption class="text-gray-500 dark:text-gray-400 text-center text-sm">
        <p>Osmussaar Lighthouse by Aleksandr Abrosimov CC-SA-3.0</p>
      </figcaption>
    </figure>
  </div>
  <div class="grid-cols-1 flex flex-col">
    <h3 class="text-lg font-semibold mt-8">For Content Creators</h3>
    <div class="flex flex-col gap-5 leading-7">
      <p class="mt-6">Whether animating in <b>Synfig Studio</b>, producing music with <b>Musescore</b> or <b>Mixxx</b>, graphic design with <b>GIMP</b> or <b>Inkscape</b>, or editing video with <b>Avidemux</b>, <b>Kdenlive</b>, or <b>Shotcut</b>, Solus provides software to help express your creativity. We maintain first-class <b>ROCm</b> (Radeon Open Compute) support, enabling AMD users to utilize GPU acceleration in <b>Blender</b> and various Machine Learning content tools.</p>
    </div>
  </div>
</div>
{{</ section >}}

{{< section heading="Default Software" alt=true >}}
<div class="leading-7">
  <p class="mb-10">Solus ships with a variety of software out of the box so you can get going without a lot of setup fuss. Less setup means you can get started using your computer quicker.</p>

  {{< hextra/feature-grid >}}
  {{< hextra/feature-card
    title="Web browser"
    subtitle="We ship with **Mozilla Firefox**, a fast and secure web browser."
  >}}

  {{< hextra/feature-card
    title="Email client"
    subtitle="Take the hassle out of email by using the simple, yet feature-rich, **Mozilla Thunderbird**."
  >}}

  {{< hextra/feature-card
    title="Office suite"
    subtitle="Edit documents and presentations with the **LibreOffice** software suite."
  >}}
  {{< /hextra/feature-grid >}}
</div>
{{</ section >}}

{{< section heading="Built By You" >}}
  <div class="leading-7">
    <p class="mt-6">Solus is empowered by the shared vision of a strong community working for a common goal. All developments and improvements to Solus are by people who want to use their computers just like you do. Solus stands strong on an open platform, powered by industry-proven technologies, including GNU/Linux.</p>
    <p class="my-6">This is a volunteer-run project, and we rely on donations from the community to keep the lights on. We understand that donating money can be tough, especially in these challenging times. As such, we are very grateful to everyone who contributes financially to the project. If you would like to support our work, please consider donating to our OpenCollective.</p>
    {{< button
    text="Support us on OpenCollective"
    link="https://opencollective.com/getsolus"
    >}}
  </div>
{{</ section >}}
