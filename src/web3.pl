local ($buffer, @pairs, $pair, $name, $value, %FORM);

# Read in the text

$ENV{'REQUEST_METHOD'} =~ tr/a-z/A-Z/;
if ($ENV{'REQUEST_METHOD'} eq "GET") {
    $buffer = $ENV{'QUERY_STRING'};
} elsif ($ENV{'REQUEST_METHOD'} eq "POST") {
    read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
} else {
    # print the HTTP header
    print "Content-type: text/html\n\n";
    print "Error: This script can only be used to decode form results.\n\n";
    exit;
}

# Split the name-value pairs
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
    ($name, $value) = split(/=/, $pair);
    $value =~ tr/+/ /;
    $value =~ s/%(..)/pack("c", hex($1))/ge;
    $FORM{$name} = $value;
}

$first_name = $FORM{first_name};
$last_name = $FORM{last_name};

print "Content-type: text/html\r\n\r\n";
print "<html>\r\n";
print "<head>\r\n";
print "<title>Perl Form Results</title>\r\n";
print "</head>\r\n";
print "<body>\r\n";
print "<h1>Perl Form Results</h1>\r\n";
print "<p>First Name: $first_name</p>\r\n";
print "<p>Last Name: $last_name</p>\r\n";
print "</body>\r\n";
print "</html>\r\n";

1;

# Path: src\form.pl

