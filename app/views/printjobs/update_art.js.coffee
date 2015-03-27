$("#preview").empty()
  .append("<%= escape_javascript(render(:partial => "art_preview")) %>")