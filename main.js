var query;
var pontszam = 0;
var listeners = [];
var already = [];
var hossz = 0;

fetch("main.php")
.then( res => res.text() )
.then( txt => { query = txt; })

function main() {
// main function
// check for errors in the php
try {
    var data;
    data = JSON.parse(query);
} catch (e) {
    window.alert("Hiba történt! Kérlek fordulj a fejlesztőkhöz, vagy nézd meg a konzolt részletesebb leírásért.");
    console.warn(`The following text was returned from the php code:\n${query}`);
    throw new Error("Didn't get a json from the php code. Check if the database is reachable and the php code can connect to it (if there was an error returned from the php code, you can see it above this error as a warning). If you want to retry, please refresh the page.");
}

const alma = document.getElementById("hossz").value;
if (alma==0) {
    hossz = data.length;
}
else {
    hossz = alma;
}


// go if there wasn't any error
document.getElementById("kezdolap").style.display = "none";
document.getElementById("kviz").style.display = "block";

kerdes(data);

} // end of main


function kerdes(data) {
    if (already.length == hossz) {
        document.getElementById("kviz").style.display = "none";
        document.getElementById("eredmeny").style.display = "block";
        document.getElementById("pont").textContent = `Az ön pontszáma: ${pontszam}/${hossz}`;
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
    
    for (let i=0; i<valaszelemek.length; i++) {
        const v = valaszelemek[i];
        const fun = kovi.bind(this, data, v.id, rand);
        v.addEventListener("click",  fun);
        listeners.push(fun);
    }
}


function kovi(data, i, rand) {
    const helyes = data[rand]["helyes"];
    
    const valaszelemek = document.getElementsByClassName("valasz");
        
    for (let n=0; n<valaszelemek.length; n++) {
        const v = valaszelemek[n];
        v.removeEventListener("click", listeners[n]);
    }
    listeners = [];
    
    if (i==helyes) {
        pontszam++;
        kerdes(data);
    } else {
        kerdes(data);
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