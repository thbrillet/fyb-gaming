console.log("test1");

function ClickOnButton() {
  const btns = document.querySelectorAll(".btngroupmembers");
  [].forEach.call(btns, function(btn) {
    btn.addEventListener('click', (event) => {
      console.log("test2");
      let chartDiv = btn.parentElement.parentElement.parentElement.parentElement
      if(chartDiv.style.bottom == '-70vh')
        chartDiv.style.bottom = '0vh';
      else
        chartDiv.style.bottom = '-70vh';
    });
  });
};

export { ClickOnButton };


