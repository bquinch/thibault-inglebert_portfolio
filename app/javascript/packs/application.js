import "bootstrap";
import "flatpickr/dist/themes/airbnb.css";
import AOS from 'aos';
import 'aos/dist/aos.css';
import { initFlatPickr } from "plugins/flatpickr.js";
import { initRellax } from "plugins/rellax.js";
import { initNavbar } from "plugins/init_navbar.js";
import { mixBlend } from "plugins/mix_blend.js";
import { previewImageOnFileSelect } from "plugins/preview_image.js";

initFlatPickr();
if (document.getElementById('browse')) {
  previewImageOnFileSelect();
}

if (document.querySelector('.presentation-card__text')) {
  mixBlend();
}

if (document.querySelector('.sidebar-tibo')) {
  initNavbar();
}

if (document.querySelector('.rellax')) {
  initRellax();
}

AOS.init();
