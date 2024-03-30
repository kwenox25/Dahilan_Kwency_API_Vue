export function scrollTrigger() {
  gsap.registerPlugin(ScrollTrigger);
  gsap.registerPlugin(ScrollToPlugin);

  const navLinks = document.querySelectorAll("#main-header nav ul li a");

  function scrollLink(e) {
    e.preventDefault();
    console.log(e.currentTarget.hash);
    let selectedLink = e.currentTarget.hash;
    gsap.to(window, {
      duration: 1.2,
      scrollTo: { y: `${selectedLink}`, offsetY: 100 },
    });
  }

  navLinks.forEach((link) => {
    link.addEventListener("click", scrollLink);
  });
  console.log("scroll to working");

  const welcomeAnimation = gsap.from("#hero-con h2, #hero-con .buttonVisit", {
    opacity: 0,
    y: 100,
    duration: 1,
  });

  ScrollTrigger.create({
    trigger: "#hero-con",
    animation: welcomeAnimation,
    start: "top 80%",
    once: true,
  });
  const imageAnimation = gsap.from(".jean-artwork", {
    opacity: 0,
    x: 100,
    stagger: 0.3,
    duration: 3,
    ease: "power4.out",
  });

  ScrollTrigger.create({
    trigger: "#exhibitions",
    animation: imageAnimation,
    start: "top 80%",
    once: true,
  });

  // Animation for About section
  const aboutAnimation = gsap.from("#about h3, #about p", {
    opacity: 0,
    y: 100,
    duration: 1,
  });

  ScrollTrigger.create({
    trigger: "#about",
    animation: aboutAnimation,
    start: "top 80%",
    once: true,
  });

  // Animation for Upcoming Exhibitions section
  const exhibitionsAnimation = gsap.from("#exhibitions h3", {
    opacity: 0,
    y: 100,
    duration: 1,
  });

  ScrollTrigger.create({
    trigger: "#exhibitions",
    animation: exhibitionsAnimation,
    start: "top 80%",
    once: true,
  });

  // Animation for Collections section
  const collectionsAnimation = gsap.from("#collections h3", {
    opacity: 0,
    y: 100,
    duration: 1,
  });

  ScrollTrigger.create({
    trigger: "#collections",
    animation: collectionsAnimation,
    start: "top 80%",
    once: true,
  });

  // Animation for flex-container2
  const flexContainer2Animation = gsap.from(".flex-container2 > div", {
    opacity: 0,
    y: 100,
    duration: 1,
    stagger: 0.3,
  });

  ScrollTrigger.create({
    trigger: ".flex-container2",
    animation: flexContainer2Animation,
    start: "top 80%",
    once: true,
  });

  const shopFlexContainerAnimation = gsap.from(".shop-flex-container > div", {
    opacity: 0,
    y: 100,
    duration: 2,
    stagger: 0.3,
  });

  ScrollTrigger.create({
    trigger: "#shop",
    animation: shopFlexContainerAnimation,
    start: "top 80%",
    once: true,
  });

  const artworksListAnimation = gsap.from("#app", {
    opacity: 0,
    y: 50,
    duration: 2,
    stagger: 0.2,
    ease: "power4.out",
  });

  ScrollTrigger.create({
    trigger: "#collections",
    animation: artworksListAnimation,
    start: "top 80%",
    once: true,
  });
}
