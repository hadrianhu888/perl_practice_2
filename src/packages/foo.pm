package foo; 
print "Begin and Block Demo\n\n";

BEGIN {
    print "BEGIN Block\n\n";
}

END {
    print "END Block\n\n";
}

sub foo {
    print "foo() function\n\n";
}

sub bar {
    print "bar() function\n\n";
}

print "End of Block Demo\n\n";

1;

# Path: src\packages\foo.pm

