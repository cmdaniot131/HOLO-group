// When the user scrolls down 50px from the top of the document, slide down the navbar
var last_scroll_top = 0;

window.onscroll = function() {scrollFunction()};
    
    function scrollFunction() {
        let scroll_top = window.scrollY;
        if (scroll_top < last_scroll_top) {
            document.querySelector('.autohide').classList.remove('scrolled-down');
            document.querySelector('.autohide').classList.add('scrolled-up');
        } else {
            document.querySelector('.autohide').classList.remove('scrolled-up');
            document.querySelector('.autohide') .classList.add('scrolled-down');
        }
        last_scroll_top = scroll_top;
}
