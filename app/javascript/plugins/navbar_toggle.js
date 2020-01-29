const navbarToggle = () => {
  let position = 0;

  const navbarLeWagon = document.querySelector('.navbar-lewagon');
  window.addEventListener('scroll', (event) => {
    let position = window.scrollY;
    if (position > 600) {
      navbarLeWagon.removeAttribute('hidden');
      navbarLeWagon.classList.add('fadeIn');
      if (document.querySelector('.navbar-lewagon.fadeIn')) {
        navbarLeWagon.classList.remove('fadeOut');
      }
    }
    if (position < 600) {
      navbarLeWagon.classList.remove('fadeIn');
      navbarLeWagon.classList.add('fadeOut');
      navbarLeWagon.setAttribute('hidden', true);
    }
  });
};

export { navbarToggle };
