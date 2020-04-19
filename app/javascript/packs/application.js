require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import $ from 'jquery';
import "bootstrap";
import "flatpickr/dist/themes/airbnb.css";
import AOS from 'aos';
import 'aos/dist/aos.css';
import { initFlatPickr } from "plugins/flatpickr.js";
import { loadingScreen } from "plugins/loading_screen.js";
import { initRellax } from "plugins/rellax.js";
import { filterTabs } from "plugins/filter_tabs.js";
import { initNavbar } from "plugins/init_navbar.js";
import { mixBlend } from "plugins/mix_blend.js";
import { pauseVideo } from "plugins/pause_video.js";
import { previewImageOnFileSelect } from "plugins/preview_image.js";

global.$ = jQuery;

initFlatPickr();

loadingScreen();

if (document.querySelector('.modal')) {
  pauseVideo();
};

if (document.getElementById('browse')) {
  previewImageOnFileSelect();
};

if (document.querySelector('.presentation-card__text')) {
  mixBlend();
};

if (document.querySelector('.sidebar-tibo')) {
  initNavbar();
};

if (document.querySelector('.rellax')) {
  initRellax();
};

AOS.init();

if (document.querySelector('.nav-link')) {
  filterTabs();
}


