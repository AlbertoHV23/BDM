window.addEventListener("scroll", function () {
  var header = document.querySelector(".d-inline-flex");
  var barras = document.querySelector("#barras");
  var times = document.querySelector("#times");
  header.classList.toggle("sticky", window.scrollY > 10);
  barras.classList.toggle("black", window.scrollY > 10);
  times.classList.toggle("black", window.scrollY > 10);
});




function abrir() {
  var menutoggle = document.querySelector(".menu");
  if (screen.width < 991) {
    document.getElementById("barras").style.display = "none";
    document.getElementById("times").style.display = "block";
    menutoggle.classList.toggle("active");
  }
}

function cerrar() {
  if (screen.width < 991) {
    var menutoggle = document.querySelector(".menu");
    document.getElementById("barras").style.display = "block";
    document.getElementById("times").style.display = "none";
    menutoggle.classList.toggle("active");
  }
}
