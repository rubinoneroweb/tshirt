# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
owl = $("#owl-example")
i = 0
textholder = undefined
booleanValue = false

#init carousel
owl.owlCarousel({
 	 	navigation : false, 
		slideSpeed : 300,
		paginationSpeed : 400,
    
		singleItem:true
 	});

$('.next').click ->
  owl.trigger 'owl.next'
  return
$('.prev').click ->
  owl.trigger 'owl.prev'
  return


$ ->
  $(document).on 'change', '#artcat_select', (evt) ->
    $.ajax 'update_catalog',
      format: 'js',
      type: 'GET'
      dataType: 'script'
      data: {
        artcat_id: $("#artcat_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
           owl.data('owlCarousel').reinit({singleItem : true});

$ ->
  $(document).on 'click', '.cat_remove', (evt) ->
    $(this).unbind('click')
    $.ajax
      url: "delete_artcat"
      data:
        artcat_id: $(this).data('artcat')

      dataType: "script"

    return false

$ ->
  $(document).on 'click', '.cat_add', (evt) ->
    $(this).unbind('click')
    $.ajax
      url: "update_artcat"
      data:
        artcat_id: $(this).data('artcat')

      dataType: "script"

    return false