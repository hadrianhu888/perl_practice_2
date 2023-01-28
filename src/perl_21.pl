# Perl regex 

$bar = "This is foo and again foo";
if ($bar =~ /foo/) {
    print "First time is matching\n";
} else {
    print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ /foo/) {
    print "Second time is matching\n";
} else {
    print "Second time is not matching\n";
}

$bar = "This is foo and again foo";
if ($bar =~ m{foo}) {
    print "First time is matching\n";
} else {
    print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ m{foo}) {
    print "Second time is matching\n";
} else {
    print "Second time is not matching\n";
}


$true = ($foo - $bar); 

print ($true ? "true" : "false");

my ($hours, $minutes, $seconds) = ($time =~ m/(\d+):(\d+):(\d+)/);

@list = qw/food foosball subeo footnote terfoot canic footbridge/;
foreach (@list) {
    $first = $list if /(foo.*?)/;
    $last = $list if /(foo.*)/;
}
print "First: $first, Last: $last\n\n";

$string = "The food is in the salad bar.";
$string =~ m/foo/;
print "Matched: $`\n";
print "Matched: $&\n";
print "Matched: $'\n";

$string = "The cat sat on the mat.";
$string =~ s/cat/dog/;
print "$string\n";

$string =~ tr/a-z/A-Z/;
print "$string\n\n";

$string = 'food'; 
$string = 'food'; 
$string =~ tr/a-z/A-Z/;

$string = "$string\n";

=begin
# nothing in the string (start and end are adjacent)
/^$/   

# a three digits, each followed by a whitespace
# character (eg "3 4 5 ")
/(\d\s) {3}/

# matches a string in which every
# odd-numbered letter is a (eg "abacadaf")
/(a.)+/  

# string starts with one or more digits
/^\d+/

# string that ends with one or more digits
/\d+$/
=cut 

if ($string =~ /cat|dog/) {
    print "Matched: $&\n";
}

if (($string =~ /Martin Brown/) || ($string =~ /John Smith/)) {
    print "Matched: $&\n";
}

if ($string =~ /(Martin|Sharon) Brown/) {
    print "Matched: $&\n";
}

my ($hours, $minutes, $seconds) = ($time =~ /(\d+):(\d+):(\d+)/);

$time = sprintf("%.2f", $hours) . ":" . sprintf("%.2f", $minutes) . ":" . sprintf("%.2f", $seconds);

print "Hours: $hours, Minutes: $minutes, Seconds: $seconds\n\n"; 

$date = "2023-01-27";
$date =~ /(\d+)-(\d+)-(\d+)/;
print "Year: $1, Month: $2, Day: $3";

$string = "The time is 12:34:56 on 2023-01-27";

$string =~ /:\s+/g;
($time) =~ ($string =~ /\G(\d+:\d+:\d+)/);
($date) =~ ($string =~ /\G(\d+-\d+-\d+)/);
print "Time: $time, Date: $date\n\n"; 

