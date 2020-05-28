import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The Best Drinks", "Anytime"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
