const changeButton = (event) => {
  const button = document.querySelector('.booking-button');
  button.addEventListener('click', (event) => {
  // Callback
  event.currentTarget.value = 'Booked';
  event.currentTarget.setAttribute("disabled", "");
  console.log("button is clicked");
  console.log(button);
  });
}

export { changeButton };
