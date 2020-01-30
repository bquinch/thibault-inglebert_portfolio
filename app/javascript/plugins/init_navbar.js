const initNavbar = () => {
  const toggleIcon = document.getElementById('menu-toggle');
  const closeIcon = document.querySelector('.fa-times');
  const sideBar = document.querySelector('.sidebar-tibo');
  toggleIcon.addEventListener('click', (event) => {
    event.preventDefault;
    sideBar.classList.toggle('active');
    toggleIcon.setAttribute('hidden', true);
  });
  closeIcon.addEventListener('click', (event) => {
    sideBar.classList.toggle('active');
    toggleIcon.removeAttribute('hidden');
  })
}

export { initNavbar };
