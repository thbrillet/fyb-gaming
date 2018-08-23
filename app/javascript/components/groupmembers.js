function ClickOnButton() {
  const btns = document.querySelectorAll(".btngroupmembers");
  [].forEach.call(btns, (btn) => {
    btn.addEventListener('click', (event) => {
      console.log('yep')
      let chartDiv = btn.parentElement.parentElement.parentElement.parentElement
      if(chartDiv.style.bottom == '-60vh') {
        chartDiv.style.bottom = '0vh';
        btn.innerHTML = "<span></span>#HIDE_MEMBERS";}
      else {
        console.log('else')
        chartDiv.style.bottom = '-60vh';
        btn.innerHTML = "<span></span>#SEE_MEMBERS";}
    });
  });
};

function ClickOnButtonShow() {
  const btnshow = document.querySelectorAll(".btngroupshow");
  [].forEach.call(btnshow, (btn) => {
    btn.addEventListener('click', (event) => {
      console.log('yep')
      let chartDiv = btn.parentElement.parentElement.parentElement.parentElement
      if(chartDiv.style.bottom == '-20vh') {
        chartDiv.style.bottom = '60vh';
        btn.innerHTML = "<span></span>#HIDE_MEMBERS";}
      else {
        console.log('else')
        chartDiv.style.bottom = '-20vh';
        btn.innerHTML = "<span></span>#SEE_MEMBERS";}
    });
  });
};

export { ClickOnButton };
export { ClickOnButtonShow };

