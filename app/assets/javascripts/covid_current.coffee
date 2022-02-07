# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

checkCohabiting = (locality) ->
  if locality.val().length == 0
    $('#part_locality_wrapper').hide()
  else
    mydata = 'id='+locality.val()
    Rails.ajax
        type: 'POST'
        url: '/covid_current/part_locality'
        data: mydata
        success: (repsonse) ->
            if $.fn.dataTable.isDataTable('#part_locality')
                $('#part_locality').DataTable().clear()
                $('#part_locality').DataTable().rows.add(repsonse)
                $('#part_locality').DataTable().draw()
                $('#part_locality_wrapper').show()
            return
        error: (repsonse) ->
            console.log 'error en ajax'
            return
  return

$(document).on 'turbolinks:load', ->
  if $('.covid_current.index').length > 0

    $('#part_locality').DataTable({
        "searching": false
        # aoColumns: [
        #     { mData: 'new_cases' },
        #     { mData: 'ambulatory' },
        #     { mData: 'general_room' },
        #     { mData: 'uti_with_arm' },
        #     { mData: 'uti_without_arm' },
        #     { mData: 'recovereds' },
        # ]
    })

    checkCohabiting $('#select_locality_list')

    $('#select_locality_list').on 'change', ->
      checkCohabiting $(this)
      return
  return