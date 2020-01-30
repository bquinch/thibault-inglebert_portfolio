const navbarToggle = () => {
  let position = 0;

  const toggle = document.getElementById('menu-toggle');
  const menu = document.querySelector('.sidebar-tibo');
  window.addEventListener('scroll', (event) => {
    let position = window.scrollY;
    if (position > 600) {
      toggle.removeAttribute('hidden');
      menu.removeAttribute('hidden');
      toggle.classList.add('fadeIn');
      menu.classList.add('fadeIn');
      if (document.querySelector('.toggle.fadeIn')) {
        toggle.classList.remove('fadeOut');
      } if (document.querySelector('.sidebar-tibo')) {
        menu.classList.remove('fadeOut');
      }
    }
    if (position < 600) {
      toggle.classList.remove('fadeIn');
      menu.classList.remove('fadeIn');
      toggle.classList.add('fadeOut');
      menu.classList.add('fadeOut');
      toggle.setAttribute('hidden', true);
      menu.setAttribute('hidden', true);
    }
  });
};

export { navbarToggle };
