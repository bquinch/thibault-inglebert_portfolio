import "bootstrap";
import "flatpickr/dist/themes/airbnb.css";
import AOS from 'aos';
import 'aos/dist/aos.css';
import { initFlatPickr } from "plugins/flatpickr.js";
import { initRellax } from "plugins/rellax.js";
import { initFlickity } from "plugins/flickity.js";
import { navbarToggle } from "plugins/navbar_toggle.js";
import { initNavbar } from "plugins/init_navbar.js";

initFlatPickr();

if (document.getElementById('menu-toggle')) {
  initNavbar();
  navbarToggle();
}


if (document.querySelector('.carousel')) {
  initFlickity();
}

if (document.querySelector('.rellax')) {
  initRellax();
}

AOS.init();
