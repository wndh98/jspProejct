const button = document.getElementsByClassName("Right")[0];

button.addEventListener("click", function() {
	document.getElementById("popupbox").classList.toggle("close");
	document.getElementById("popupbox").classList.toggle("in");
	document.getElementById("dark").classList.toggle("close");
});

const button2 = document.getElementById("sideClose");

button2.addEventListener("click", function() {
	document.getElementById("popupbox").classList.toggle("close");
	document.getElementById("popupbox").classList.toggle("in");
	document.getElementById("dark").classList.toggle("close");
});
