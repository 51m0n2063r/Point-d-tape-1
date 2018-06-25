(function ($) {
    $(function () {

        $('.sidenav').sidenav();

    });
    document.addEventListener('DOMContentLoaded', function () {
        var elems = document.querySelectorAll('.datepicker');
        var instances = M.Datepicker.init(elems, options);
    });
    document.addEventListener('DOMContentLoaded', function () {
        var elems = document.querySelectorAll('.slider');
        var instances = M.Slider.init(elems, options);
    }); // end of document ready
})(jQuery); // end of jQuery name space
$(document).ready(function () {
    $('.datepicker').datepicker();
});
$(document).ready(function () {
    $('.parallax').parallax();
});
 $(document).ready(function(){
    $('.slider').slider();
  });