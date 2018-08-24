const s = document.getElementById('alert').style;
s.opacity = 1;
(function fade(){(s.opacity-=.01)<0?s.display="none":setTimeout(fade,50)})();

