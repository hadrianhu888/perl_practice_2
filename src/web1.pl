print "Content type: text/html\n\n";
print "<font size = +1> Environment </font>\n";
foreach (sort keys %ENV) {
    print "$_ = $ENV{$_}<br>\n";
}

1; 

# Path: src/web1.pl

