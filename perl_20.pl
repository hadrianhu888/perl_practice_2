=begin 
Perl Regular Expressions 
=cut

$bar = "This is foo and again foo"; 
if $bar =~ /foo/ {
    print "First time is matching\n";
} else {
    print "First time is not matching\n";
}

$bar = "foo"
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

$bar = "foo"
if ($bar =~m{foo}) {
    print "Second time is matching\n";
} else {
    print "Second time is not matching\n";
}

my ($hours, $minutes, $seconds) = ($time =~ m/(\d+):(\d+):(\d+)/);

@list = qw/food foosball subeo footnote terfoot canic footbridge/;

foreach (@list) {
    $first = $1 if /(foo.*?)/;
    $last = $1 if /(foo.*)/;
    }
print "First: $first, Last: $last\n";

