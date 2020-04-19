const toggleModal = () => {
  if (document.readyState === "complete") {
    $('#loadingModal').modal('hide');
  }
}

const loadingScreen = () => {
  $('#loadingModal').modal('show')
  document.onreadystatechange = () => {
    toggleModal();
  }

  setTimeout(function(){ toggleModal() }, 3000);
  setTimeout(function(){ toggleModal() }, 6000);
}

export { loadingScreen }
