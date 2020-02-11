const pauseVideo = () => {
  const modals = document.querySelectorAll('.modal');
  const videos = document.querySelectorAll('video');
  modals.forEach((modal) => {
    $(modal).on('hide.bs.modal', function(e) {
      videos.forEach((video) => {
        video.pause();
      });
    });
  });
};

export { pauseVideo };
