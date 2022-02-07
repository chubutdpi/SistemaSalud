jQuery.fn.ForceNumericOnly = ->
  @each ->
    $(this).keydown (e) ->
      key = e.charCode or e.keyCode or 0
      # allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
      # home, end, period, and numpad decimal
      key == 8 or key == 9 or key == 13 or key == 46 or key == 110 or key == 190 or key >= 35 and key <= 40 or key >= 48 and key <= 57 or key >= 96 and key <= 105
    return

$.fn.extend {
  integrateSelect2: (selector)->
    selector = selector || '.select2'
    $(@).find(selector).select2({
      theme: "bootstrap",
      width: '100%',
      allowClear: false
    })

 
  integrateDatepicker: (selector)->
    selector = selector || '.datepicker'
    $(@).find(selector).datepicker({
      language: "es"
      todayHighlight: true
      todayBtn: "linked"
      clearBtn: true
      autoclose: true
      format: 'dd-mm-yyyy'
    })
        
}

document.addEventListener 'turbolinks:before-cache', ->
  # removing the select2 from all selects
  $('select').select2 'destroy'

$(document).on 'turbolinks:load', ->
  $(document).find('select').not('.select2-hidden-accessible').select2()


Number::format = (n, x, s, c) ->
  re = '\\d(?=(\\d{' + (x or 3) + '})+' + (if n > 0 then '\\D' else '$') + ')'
  num = @toFixed(Math.max(0, ~ ~n))
  (if c then num.replace('.', c) else num).replace new RegExp(re, 'g'), '$&' + (s or ',')

$(document).ready ->
  $('[data-toggle="tooltip"]').tooltip()
  form = $('form')
  form.integrateSelect2()
  form.integrateDatepicker()

$(document).on 'turbolinks:load', ->
  $('[data-toggle="tooltip"]').tooltip()
  form = $('form')
  form.integrateSelect2()
  form.integrateDatepicker()


  
