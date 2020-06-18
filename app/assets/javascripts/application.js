// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery

$(window).on("load scroll", function() {
	barreDefilement();
});

function calculPourcentageHauteur() {
    var hauteurDocument = $(document).height(); 
    var hauteurFenetre = $(window).height(); 
    var position = $(window).scrollTop(); 
    var positionDernierEcran = hauteurDocument - hauteurFenetre; 
    var ratioHauteur = position / positionDernierEcran; 
    var pourcentageHauteur = Math.floor(ratioHauteur * 100); 

    console.log("Pourcentage de la hauteur parcourue : " + pourcentageHauteur + "%");

    return pourcentageHauteur;
}

function barreDefilement() {
	var cible = $("#barre-1 .progression");
	cible.css({
		"width": calculPourcentageHauteur()+"%"
	});
	$("#barre-1 .pourcentage").html(calculPourcentageHauteur()+"%");	
}
