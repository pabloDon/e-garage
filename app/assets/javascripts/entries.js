$(document).ready(function(){
	$('#search_dni_cliente').autocomplete({
		source: $('#search_dni_cliente').data('autocomplete-source'),
		select: function(event,ui){
			$('#owner_first_name').val(ui.item.first_name);
			$('#owner_last_name').val(ui.item.last_name);
			$('#owner_phone').val(ui.item.phone);
			$('#owner_mobile').val(ui.item.mobile);
			$('#busqueda-dni').hide();
			$('#add-cliente').hide();
			$('#form-cliente').show();
			$('#form-cliente fieldset h3').hide();
		},
		minLength: 1
	});
	$('#search_matricula_coche').autocomplete({
		source: $('#search_matricula_coche').data('autocomplete-source'),
		select: function(event,ui){
			$('#search_marca_coche').val(ui.item.marca);
			$('#search_modelo_coche').val(ui.item.modelo);
			$('#search_year_coche').val(ui.item.year);
			$('#search_km_coche').val(ui.item.km);
			$('#busqueda-coche').hide();
			$('#add-coche').hide();
			$('#form-coche').show();
			$('#form-coche fieldset h3').hide();
		},
		minLength: 1
	});
	
	$('#add-cliente').click(function(){
		$('#busqueda-dni').hide();
		$(this).hide();
		$('#form-cliente').show();
	})
	
	$('#add-coche').click(function(){
		$('#busqueda-coche').hide();
		$(this).hide();
		$('#form-coche').show();
	})
});