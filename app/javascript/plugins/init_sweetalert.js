import swal from 'sweetalert2';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector('.booking-button');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options);
    });
  }
};

export { initSweetalert };
