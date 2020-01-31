import "bootstrap";
import "flatpickr/dist/themes/airbnb.css";
import AOS from 'aos';
import 'aos/dist/aos.css';
import { initFlatPickr } from "plugins/flatpickr.js";
import { initRellax } from "plugins/rellax.js";
import { initFlickity } from "plugins/flickity.js";
import { initNavbar } from "plugins/init_navbar.js";

initFlatPickr();

if (document.querySelector('.sidebar-tibo')) {
  initNavbar();
}


if (document.querySelector('.carousel')) {
  initFlickity();
}

if (document.querySelector('.rellax')) {
  initRellax();
}

AOS.init();
