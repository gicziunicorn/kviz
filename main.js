var data;
fetch("main.php")
.then( res => res.text() )
.then( dat => { data = dat; })


function main(data) {
// main function
var success = undefined;
try {
    const json = JSON.parse(data);
} catch (error) {
    window.alert("Something went wrong. Please check the console for more information!");
    console.warn(`The following text was returned from the php code:\n${data}`);
    throw new Error("Didn't get a json from the php code. Check if the database is only and the php code can connect to it (if there was an error returned from the php code, you can see it above this error as a warning). If you want to retry, please refresh the page.");
}
var rand = genRandom(0, data.length);
console.log(data, rand);

const kerdes = document.getElementById("kerdes");
kerdes.textContent=data[rand].kerdes;

}

function genRandom(min, max) {
    return Math.floor(Math.random() * (max-min) + min);
}

window.onload = function init(){
    document.getElementById("start").addEventListener("click", ()=>{
    try {
        main(data);
    } catch (error) {
        console.error(error.message);
        
    }
})
}