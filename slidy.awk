BEGIN {
print "<!DOCTYPE html>"
print "<html>"
print "  <head>"
print "    <meta charset='utf-8'>"
  head = 1
}

/<\/head/ {
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