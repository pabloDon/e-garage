$(document).ready(function(){
	var agregado = 1;
	$('#link-add-car').click(function(e){
		e.preventDefault();
		$('#menu-cars').append("<div class='car'>"+
							  " <h4>Agregar coche</h4>"+
							  "	<div class='field'>"+
							  "		<label for='marca-"+agregado+"'>Marca</label>"+
							  "		<input id='marca-"+agregado+"' data-autocomplete-source='/search_marca_coche' class='ui-autocomplete-input' autocomplete='off' name='coche[marca]' type='text'>"+
							  "	</div>"+
							  "	<div class='field'>"+
							  "		<label for='modelo-"+agregado+"'>Modelo</label>"+
							  "		<input id='modelo-"+agregado+"' data-autocomplete-source='/search_modelo_coche' class='ui-autocomplete-input' autocomplete='off' name='coche[modelo]' type='text'>"+
							  "	</div>"+
							  "	<div class='field'>"+
							  "		<label for='plate-"+agregado+"'>Matricula</label>"+
							  "		<input id='plate-"+agregado+"' name='coche[matricula]' type='text'>"+
							  "	</div>"+
							  "	<div class='field'>"+
							  "		<label for='mileage-"+agregado+"'>Km.</label>"+
							  "		<input id='mileage-"+agregado+"' name='coche[kms]' type='text'>"+
							  "	</div>"+
							  "	<div class='field'>"+
							  "		<label for='color-"+agregado+"'>Color</label>"+
							  "		<input id='color-"+agregado+"' name='coche[color]' type='text'>"+
							  "	</div>"+
							  "	<div class='field'>"+
							  "		<label for='year-"+agregado+"'>Año</label>"+
							  "		<input id='year-"+agregado+"' name='coche[anyo]' type='text'>"+
							  "	</div>"+
							  " <div class='actions'>" +
							  " 	<a href='#' class='envio' valor='"+agregado+"'>Enviar</a>" +
							  " </div>" +
							  "</div>");
		agregado += 1;		
	});
	$( document ).on( "click", "a.envio", function(e) {
		e.preventDefault();
		var agr = $(this).attr('valor');
		var req = 	"?marca="+$('#marca-'+agr).val()+
					"&modelo="+$('#modelo-'+agr).val()+
					"&plate="+$('#plate-'+agr).val()+
					"&mileage="+$('#mileage-'+agr).val()+
					"&color="+$('#color-'+agr).val()+
					"&year="+$('#year-'+agr).val()+
					"&owner="+document.baseURI.replace('#','').split('/').pop();
		$.getJSON( "/add-car"+req, function( data ) {});
	});
});