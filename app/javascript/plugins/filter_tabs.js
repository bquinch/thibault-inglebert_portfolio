const filterTabs = () => {
  const projectContainer = document.getElementById('projects');
  const projectCards = document.querySelectorAll('.index-project');
  const links = document.querySelectorAll('.nav-link');

  links.forEach((link) => {
    link.addEventListener('click', (event) => {
      projectContainer.innerHTML = '';
      document.querySelector('.nav-link.active').classList.toggle('active');
      event.currentTarget.classList.toggle('active');
      const filter = link.dataset.filter;
      const projects = Array.prototype.slice.call(projectCards).filter(project => project.dataset.category === filter);
      if (filter === 'all') {
        projectCards.forEach(project => {
          projectContainer.insertAdjacentElement('beforeend', project);
        })
      } else {
        projects.forEach(project => {
          projectContainer.insertAdjacentElement('beforeend', project);
        })
      }
    });
  })
}

export { filterTabs };
