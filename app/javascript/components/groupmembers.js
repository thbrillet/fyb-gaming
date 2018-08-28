function ClickOnButton() {
  const btns = document.querySelectorAll(".btngroupmembers");
  [].forEach.call(btns, (btn) => {
    btn.addEventListener('click', (event) => {
      console.log('yep')
      let chartDiv = btn.parentElement.parentElement.parentElement.parentElement
      if(chartDiv.style.bottom == '-65vh') {
        chartDiv.style.bottom = '0vh';
        btn.innerHTML = "<span></span>#HIDE_MEMBERS";}
      else {
        console.log('else')
        chartDiv.style.bottom = '-65vh';
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
      if(chartDiv.style.bottom == '0vh') {
        chartDiv.style.bottom = '90vh';
        btn.innerHTML = "#HIDE_MEMBERS";}
      else {
        console.log('else')
        chartDiv.style.bottom = '0vh';
        btn.innerHTML = "#SEE_MEMBER";}
    });
  });
};

export { ClickOnButton };
export { ClickOnButtonShow };

