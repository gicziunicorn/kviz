async function main() {  // main function
// fetch the data from the php file
const text = await fetch("php/main.php").then(res => res.text());
// check for errors in the php
var data;
try {
    data = JSON.parse(text);
} catch (e) {
    window.alert("Hiba történt! Kérlek fordulj a fejlesztőkhöz, vagy nézd meg a konzolt részletesebb leírásért.");
    console.warn(`The following text was returned from the php code:\n${text}`);
    throw new Error("Didn't get a json from the php code. Check if the database is reachable and the php code can connect to it (if there was an error returned from the php code, you can see it above this error as a warning). If you want to retry, please refresh the page.");
}

var hossz = 0;
const select = document.getElementById("hossz").value;
if (select==0) {
    hossz = data.length;
}
else {
    hossz = select;
}

document.getElementById("kezdolap").classList.toggle("hidden");
document.getElementById("kviz").classList.toggle("hidden");

var pontszam = 0;
var already = [];
kerdes(data, already, pontszam, hossz);

} // end of main


function kerdes(data, already, pontszam, hossz) {
    if (already.length == hossz) {
        document.getElementById("kviz").classList.toggle("hidden");
        document.getElementById("eredmeny").classList.toggle("hidden");
        document.getElementById("pont").textContent = `A pontszámod: ${pontszam}/${hossz}`;
        return;
    }

    var rand = undefined;
    while (already.includes(rand) || rand==undefined) {
        rand = genRandom(0, data.length);
    }
    already.push(rand);

    const kerdes = document.getElementById("kerdes");
    kerdes.textContent=data[rand].kerdes;
    const valaszok = Array.from(document.getElementById("valaszok").children);
    const available = [1, 2, 3];
    for (let i=0;i<valaszok.length;i++) {
        const idx = available[genRandom(0,available.length)];
        available.splice(available.indexOf(idx), 1);
        valaszok[idx-1].textContent = data[rand][`valasz${i+1}`];
        valaszok[idx-1].id = i+1;
    }
    const valaszelemek = document.getElementsByClassName("valasz");

    var listeners = [];
    for (let i=0; i<valaszelemek.length; i++) {
        const v = valaszelemek[i];
        const fun = kovi.bind(this, data, v.id, rand, listeners, already, pontszam, hossz);
        listeners.push(fun);
        v.addEventListener("click",  fun);
    }

    kerdes.focus();
}


function kovi(data, i, rand, listeners, already, pontszam, hossz) {
    const helyes = data[rand]["helyes"];

    const valaszelemek = document.getElementsByClassName("valasz");

    for (let n=0; n<valaszelemek.length; n++) {
        const v = valaszelemek[n];
        v.removeEventListener("click", listeners[n]);
    }
    listeners = [];

    if (i==helyes) {
        pontszam++;
        kerdes(data, already, pontszam, hossz);
    } else {
        kerdes(data, already, pontszam, hossz);
    }
}


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