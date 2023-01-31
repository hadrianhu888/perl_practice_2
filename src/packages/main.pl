require foo;
require Exporter;

foo::foo("a");
foo::bar("b");

# use foo; 

bar("c");
foo("d");

@ISA = qw(Exporter);
@EXPORT = qw(Exporter);

sub bar {
    print "bar() function\n\n";
}

sub foo {
    print "foo() function\n\n";
}

sub splat {
    print "splat() function\n\n";
}

1;

# Path: src\packages\main.pl



