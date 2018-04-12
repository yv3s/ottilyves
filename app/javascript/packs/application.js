import "bootstrap";

const presence = document.getElementById("guest_presence_true");
const absence = document.getElementById("guest_presence_false");
const brunch = document.querySelector(".guest_presence_brunch");
const nombre = document.querySelector(".guest_nombre");
const remarques = document.querySelector(".guest_remarques");

console.log(presence);

presence.addEventListener('click', function(e) {
  brunch.style.display = "block";
  nombre.style.display = "block";
  remarques.style.display = "block";
})

absence.addEventListener('click', function(e) {
  brunch.style.display = "none";
  nombre.style.display = "none";
  remarques.style.display = "none";
})
