BEGIN {
  print "<!DOCTYPE html>"
  print "<html>"
  print "  <head>"
  print "    <meta charset='utf-8'>"
  print "    <meta name='duration' content='60' />"
  head = 1
}

{
  gsub(/<span class="octicon octicon-link"><\/span>/, "")
}

head && /<\/head/ {
  ## add slidy infrastructure
  ##
  print "    <title>Seminar &mdash; Opetopes</title> "
  print "      <meta name='copyright' "
  print "       content='Copyright &#169; 2013 Gabor Greif' /> "
  print "      <link rel='stylesheet' type='text/css' media='screen, projection, print' "
  print "       href='https://www.w3.org/Talks/Tools/Slidy2/styles/slidy.css' /> "
  print "      <script src='https://www.w3.org/Talks/Tools/Slidy2/scripts/slidy.js' "
  print "       charset='utf-8' type='text/javascript'></script> "
  print "       <style type='text/css'> "
  print "       div.slide h1 {"
  print "         font-size: 2.5em;"
  print "         }"
  print "       </style>"
  print
  head = 0
  print "  <body>"
  next
}

head && (/text\/css/ || /text\/javascript/) {
  print
  next
}

/<article/ {
  print "<div class='slide markdown-body'><h1>"
  needs_close_div = 1
  inside = 1
  next
}

inside && /<\/article/ {
  sub(/<\/article.*$/, "")
  print
  inside = 0
}

inside && /<h1>/ {
  if (needs_close_div) sub(/<h1>/, "</div>\n<h1>")
  sub(/<h1>/, "<div class='slide markdown-body'><h1>")
  print
  needs_close_div = 1
  next
}

inside && /<h2>/ {
  if (needs_close_div) sub(/<h2>/, "</div>\n<h2>")
  sub(/<h2>/, "<div class='slide markdown-body'><h2>")
  print
  needs_close_div = 1
  next
}

inside {
  print
}

END {
  if (needs_close_div) print "</div>"
  print "  </body>"
  print "</html>"
}
