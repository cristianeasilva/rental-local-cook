import flatpickr from "flatpickr";


const initFlatPickr = () => {
  if (document.querySelector(".datepicker-input")) {
    flatpickr(".datepicker-input", {
      altInput: true,
      minDate: "today",
    });
  }
}

export { initFlatPickr }
