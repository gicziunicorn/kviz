var query;
fetch("main.php")
.then( res => res.text() )
.then( txt => { query = txt; })

function main() {
// main function
// check for errors in the php
var data;
try {
    data = JSON.parse(query);
} catch (e) {
    window.alert("Hiba történt! Kérlek fordulj a fejlesztőkhöz, vagy nézd meg a konzolt részletesebb leírásért.");
    console.warn(`The following text was returned from the php code:\n${query}`);
    throw new Error("Didn't get a json from the php code. Check if the database is reachable and the php code can connect to it (if there was an error returned from the php code, you can see it above this error as a warning). If you want to retry, please refresh the page.");
}

// go if there wasn't any error
console.log(data);
Array.from(document.getElementsByTagName("section")).forEach(e => {
    e.style.display = e.style.display=="none"?"block":"none";
});

const rand = genRandom(0, data.length);
console.log(rand);

const kerdes = document.getElementById("kerdes");
kerdes.textContent=data[rand].kerdes;
const valaszok = Array.from(document.getElementById("valaszok").children);
for (let i=0;i<valaszok.length;i++) {
    valaszok[i].textContent = data[rand][`valasz${i+1}`];
}


} // end of main



function genRandom(min, max) { return Math.floor(Math.random() * (max-min) + min); }

window.onload = function init(){
    document.getElementById("start").addEventListener("click", ()=>{
        try {
            main();
        } catch (error) {
            console.error(error);
            
        }
    });
}