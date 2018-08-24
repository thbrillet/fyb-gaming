function NavBar() {
  document.getElementById("navbarSideButton").addEventListener(("click"), (event) => {
    document.getElementById("navbarSide").classList.toggle("reveal");
  });
};



export { NavBar };

