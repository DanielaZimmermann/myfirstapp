var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};


$(document).on('turbolinks:load ajaxSuccess', function(){
    $(".alert").delay(4000).fadeOut("slow");

    /* raty plugin */
    refreshRating();

    /* elevate zoom plugin*/
    $('.img-zoom').elevateZoom({
        zoomType: "lens", 
        lensShape: "round", 
        lensSize: 200, 
        lensFadeIn: 400, 
        lensFadeOut: 500
    });
});

/*
$(document).on('turbolinks:load', function(){
  console.log($(".alert"));
  $(".alert").delay(4000).fadeOut("slow");
});
*/