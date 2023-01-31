$rcvd_cookies = $ENV{'HTTP_COOKIE'};
@cookies = split(/\s+/, $rcvd_cookies);
foreach $cookie (@cookies) {
    ($name, $value) = split(/=/, $cookie);
    $value =~ tr/+/ /;
    $value =~ s/%(..)/pack("C", hex($1))/eg;
    $COOKIES{$name} = $value;
    if ($key eq "UserID") {
        $UserID = $value;
    } elsif ($key eq "Password") {
        $Password = $value;
    }
}

print "User ID: $UserID\n\n";
print "Password: $Password\n\n";

print "Content-type:text/html\r\n\r\n";
print "<html>";
print "<head>";
print "<title>Cookie - Sixth CGI Program</title>"; 
print "</head>";
print "<body>";
print "<h2>Cookie</h2>";
print "</body>";
print "</html>";

1;

# Path: src\cookie.pl

