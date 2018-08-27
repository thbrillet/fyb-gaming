const divToDuplicate = '<div class="form-group string required event_objectives_name"><label class="form-control-label string required" for="event_objectives_name">Name <abbr title="required">*</abbr></label><input class="form-control string required" name="event[objectives][][name]" id="event_objectives_name" type="text"></div>'

const divToTarget = document.querySelector('.form-objectives-dynamic')

const btnObjective = document.getElementById("button-objectives-form")

function pouet() {
  console.log('yep');
  divToTarget.insertAdjacentHTML('beforeend', divToDuplicate);
};

  btnObjective.addEventListener("click", event => {
    event.preventDefault();
    pouet();
  });


