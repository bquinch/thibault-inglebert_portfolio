import flatpickr from "flatpickr";
import { French } from 'flatpickr/dist/l10n/fr.js';
const initFlatPickr = () => {
  flatpickr(".datepicker", {
    locale: French,
    altFormat: 'M Y',
    altInput: true,
  });
};

export { initFlatPickr };
