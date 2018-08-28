const btnEvent = document.querySelector(".btn-event-events");
const btnCreate = document.querySelector(".btn-event-create");
const btnPending = document.querySelector(".btn-event-pending");
const divEvent = document.querySelector(".show-group-events");
const divPending = document.querySelector(".show-group-pending");
const divCreate = document.querySelector(".show-group-create");

  function EventEvents() {
    if (btnEvent) {
      btnEvent.addEventListener('click', (event) => {
        console.log('events');
        divEvent.style.display = divEvent.style.display = "block";
        divPending.style.display = divPending.style.display = "none";
        divCreate.style.display = divCreate.style.display = "none";
        btnEvent.classList.add("border-bottom");
        btnPending.classList.remove("border-bottom");
        btnCreate.classList.remove("border-bottom");
      });
    };
  };

  function EventPending() {
    if (btnPending) {
      btnPending.addEventListener('click', (event) => {
        console.log('pending');
        divEvent.style.display = divEvent.style.display = "none";
        divPending.style.display = divPending.style.display = "block";
        divCreate.style.display = divCreate.style.display = "none";
        btnEvent.classList.remove("border-bottom");
        btnPending.classList.add("border-bottom");
        btnCreate.classList.remove("border-bottom");
      });
    };
  };

  function EventCreate() {
    if (btnCreate) {
      btnCreate.addEventListener('click', (event) => {
        console.log('create');
        divEvent.style.display = divEvent.style.display = "none";
        divPending.style.display = divPending.style.display = "none";
        divCreate.style.display = divCreate.style.display = "block";
        btnEvent.classList.remove("border-bottom");
        btnPending.classList.remove("border-bottom");
        btnCreate.classList.add("border-bottom");
      });
    };
  };

export { EventEvents };
export { EventPending };
export { EventCreate };
