$("#owl-example").empty()
  .append("<%= escape_javascript(render(:partial => "catitem")) %>")