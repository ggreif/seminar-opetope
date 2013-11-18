BEGIN {
print "<!DOCTYPE html>"
print "<html>"
print "  <head>"
print "    <meta charset='utf-8'>"
  head = 1
}

{
  gsub(/<span class="octicon octicon-link"><\/span>/, "")
}

/<\/head/ {
print "    <title>Slide Shows in XHTML</title> "
print "      <meta name='copyright' "
print "       content='Copyright &#169; 2005 your copyright notice' /> "
print "      <link rel='stylesheet' type='text/css' media='screen, projection, print' "
print "       href='http://www.w3.org/Talks/Tools/Slidy2/styles/slidy.css' /> "
print "      <script src='http://www.w3.org/Talks/Tools/Slidy2/scripts/slidy.js' "
print "       charset='utf-8' type='text/javascript'></script> "

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
  print "<h1>"
  inside = 1
  next
}

inside && /<\/article/ {
    sub(/<\/article.*$/, "")
    print
    inside = 0
}

inside {
    print

}

END {
  print "</body>"
print "</html>"
}