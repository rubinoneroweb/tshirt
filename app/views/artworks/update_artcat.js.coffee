$("#cat_tag").empty()
  .append("<%= escape_javascript(render(:partial => "avail_artcats")) %>")