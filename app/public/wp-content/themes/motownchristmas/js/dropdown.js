console.log("the file is working")
let dropdown = document.querySelector('.menu'),
buttonClick = document.querySelector('.check-button'),
hamburger = document.querySelector('.menu-icon');

buttonClick.addEventListener( 'click', () => {
    dropdown.classList.toggle( 'show-dropdown' );
    hamburger.classList.toggle( 'animate-button' );
})