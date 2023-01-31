if (!defined($pid = fork)) {
    die "Cannot fork: $!";
} elsif ($pid) {
    # Parent
    print "Parent: $$\n\n";
    exec "perl src\process_management\process.pl";
    print "Parent: $$\n\n";
} else {
    # Child
    print "Child: $$\n\n";
    exec "perl src\process_management\process.pl";
    print "Child: $$\n\n";
}

