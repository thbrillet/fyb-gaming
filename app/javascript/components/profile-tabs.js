const groupsHeader = document.getElementById('groups-tab-header');
const gamesHeader  = document.getElementById('games-tab-header');
const groupsTab    = document.querySelector('.groups-tab');
const gamesTab     = document.querySelector('.games-tab');

function profilesTabs() {
  if (groupsHeader) {
    groupsHeader.addEventListener('click', (event)=>{
      groupsHeader.classList.add('active');
      gamesHeader.classList.remove('active');
      gamesTab.classList.add('hidden')
      groupsTab.classList.remove('hidden')
    });
  };
  if (gamesHeader) {
    gamesHeader.addEventListener('click', (event)=>{
      gamesHeader.classList.add('active');
      groupsHeader.classList.remove('active');
      groupsTab.classList.add('hidden')
      gamesTab.classList.remove('hidden')
    });
  };
}

export { profilesTabs };
