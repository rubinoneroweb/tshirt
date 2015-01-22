# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'change', '#shapes_select', (evt) ->
    $.ajax 'new',
      type: 'GET'
      dataType: 'script'
      data: {
        shape_id: $("#shapes_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
        
      success: (data, textStatus, jqXHR) ->
      	 console.log("Dynamic model select OK!")
  

  $ ->
  $(document).on 'change', '#colors_select', (evt) ->
    $.ajax 'new',
      type: 'GET'
      dataType: 'script'
      data: {
        color_id: $("#colors_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
        
      success: (data, textStatus, jqXHR) ->
      	 console.log("Dynamic color select OK!")
  