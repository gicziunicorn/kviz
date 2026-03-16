fetch("main.php").then(response => response.json()).then(data => {
var rand = genRandom(0, data.length);
console.log(data, rand);

const kerdes = document.getElementById("kerdes");
kerdes.textContent=data[rand].kerdes;

})

function genRandom(min, max) {
    return Math.floor(Math.random() * (max-min) + min);
}