

$("#colors_select").empty()
  .append("<%= escape_javascript(render(:partial => "color")) %>");

$("#sizes_select").empty()
  .append("<%= escape_javascript(render(:partial => "size")) %>");