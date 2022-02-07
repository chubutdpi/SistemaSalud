$(document).on('turbolinks:load', function() {
    if ($('.covid_cases.new').length > 0 || $('.covid_cases.create').length > 0 || $('.covid_cases.edit').length > 0) {
        mostrar();
        checkDosis($("#covid_case_vaccination_scheme_id"));
        checkCohabiting($("#is_cohabiting"));

        $("#covid_case_c_symptom").select2({
            theme: 'bootstrap',
            width: '100%',
            allowClear: false,
            multiple:true
        });

        $("#is_cohabiting").on("change", function() {
            checkCohabiting( $(this) );
        });

        $("#covid_case_vaccination_scheme_id").on("change", function() {
            checkDosis( $(this) );
        });

        $("#covid_case_reason").on("change", function() {
            mostrar();
        });
    }

});

function checkCohabiting(cohabiting) {
    if ( cohabiting.is(':checked') ) {
        $('#cohabiting_symptom_date').show();
    }else{
        $('#cohabiting_symptom_date').hide();
    }
}

function checkDosis(dosis) {
    // ID 1 en el select de dosis representa SIN VACUNA
    if ( !dosis.val() == '' && dosis.val() != 1) {
        $('#last_dose_date').show();
    }else {
        $('#last_dose_date').hide();
    }
}

function mostrar()
{
    $('#institution').hide();
    $('.contac-estrecho').hide();
    var razon = $("#covid_case_reason").val();
    if (razon=="Caso sospechoso de COVID19 y descartado por resultado negativo de laboratorio."){
        $('#institution').show();
    }else{
        if(razon=="Contacto Estrecho de caso confirmado de COVID19"){
            // limpiarOcultos();
            $('.contac-estrecho').show();
            $("#is_cohabiting").prop('checked', false);
            $('#cohabiting_symptom_date').hide();

        }
    }
}

// function limpiarOcultos() {
//     $("#covid_case_institution").val('');
//     $("#covid_case_c_firstname").val('');
//     $("#covid_case_c_lastname").val('');
//     $("#covid_case_c_dni").val('');
//     $("#covid_case_c_cellphone").val('');
//     $("#covid_case_c_is_cohabiting").prop('checked', false);
// }