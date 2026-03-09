const cursordiv = document.getElementById("kurzor");

window.addEventListener("mousemove", (e) => {
    const x = e.clientX;
    const y = e.clientY;
    cursordiv.style.left = `${x - 12.5}px`;
    cursordiv.style.top = `${y - 12.5}px`;
})