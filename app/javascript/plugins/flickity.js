import Flickity from 'flickity/js'

const initFlickity = () => {
  const flky = new Flickity('.carousel', {
    wrapAround: true,
    fullscreen: true,
    selectedAttraction: 0.01,
    friction: 0.15,
    imagesLoaded: true,
    accessibility: true,
    pageDots: false,
    lazyLoad: 1,
    // at end of cells, wraps-around to first for infinite scrolling
    autoPlay: true
  });
}

export { initFlickity };
