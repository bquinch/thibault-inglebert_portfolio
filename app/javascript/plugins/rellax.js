import Rellax from 'rellax';

const initRellax = () => {
  let rellax = new Rellax('.rellax', {
    speed: -2,
    center: false,
    wrapper: null,
    round: true,
    vertical: true,
    horizontal: false
  });
};

export { initRellax };
