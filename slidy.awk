BEGIN {
print "<!DOCTYPE html>"
print "<html>"
  print "<head>"
  print "  <meta charset='utf-8'>"
  print "</head>"
  print "<body>"
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