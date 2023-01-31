local $SIG('CHILD') = 'IGNORE';

if(!defined($pid = fork)) {
    die "Cannot fork: $!";
} elsif ($pid) {
    # Parent
    print "Parent: $$\n\n";
    wait;
    print "Parent: $$\n\n";
} else {
    # Child
    print "Child: $$\n\n";
    exec "perl src\process_management\process.pl";
    print "Child: $$\n\n";
}

kill('INT', 100, 200, 300);


1;

