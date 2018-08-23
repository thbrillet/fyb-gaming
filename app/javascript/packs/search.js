const games_names_tag = document.getElementById('games_names');
const games_names = JSON.parse(games_names_tag.dataset.games);

const searchBar = document.getElementById('search');
const results = document.getElementById('results');


searchBar.addEventListener('keyup', (event) => {
  fetch(`https://wagon-dictionary.herokuapp.com/autocomplete/${searchBar.value}`)
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = "";
      const words = data.words;
      if (data.found !== false) {
        results.classList.remove('hidden');
        words.slice(0, 3).forEach((word) => {
          results.insertAdjacentHTML('afterbegin', `<p  class="list-group-item result">${word}</p>`);
          results.querySelectorAll('.result').forEach((result) => {
            result.addEventListener('click', (newEvent) => {
              searchBar.value = newEvent.currentTarget.innerText;
              results.classList.add('hidden')
            });
          });
        });
      }
    });
});

searchBar.addEventListener('keyup', (event) => {

});
results.innerHTML = "";
const words = data.words;
if (data.found !== false) {
  results.classList.remove('hidden');
  words.slice(0, 3).forEach((word) => {
    results.insertAdjacentHTML('afterbegin', `<p  class="list-group-item result">${word}</p>`);
    results.querySelectorAll('.result').forEach((result) => {
      result.addEventListener('click', (newEvent) => {
        searchBar.value = newEvent.currentTarget.innerText;
        results.classList.add('hidden')
      });
    });
  });
}
