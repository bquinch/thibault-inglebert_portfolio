const mixBlend = () => {
  const texts = document.querySelectorAll('.presentation-card__text');
  texts.forEach((text) => {
    if (!window.safari) {
      text.classList.add('mix_blend');
    }
  })
}

export { mixBlend };
