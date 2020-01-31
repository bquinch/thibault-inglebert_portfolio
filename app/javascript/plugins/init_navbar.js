const initNavbar = () => {
  let position = 0;

  const sideBar = document.querySelector('.sidebar-tibo');
  window.addEventListener('scroll', (event) => {
    let position = window.scrollY;
    if (position > 600) {
      sideBar.classList.remove('hidden-top');
    }
    if (position < 600) {
      sideBar.classList.add('hidden-top');
    }
  });
}

export { initNavbar };
