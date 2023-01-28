# Perl references 

$arrayref = [1,2,['a','b','c'],4,5];

$hashref = {
    'Adam' => 'Eve',
    'John' => 'Mary',
    'Peter' => 'Jane',
    'Clyde' => 'Bonnie',
}; 

$coderef = sub{
    print "Boink!\n\n"
};

$var = 10; 

$r = \$var;

@var = (1,2,3); 

$r = \@var;

print "Value of @var is : ", @r, "\n";

%var = ('key1' => 1, 'key2' => 2);

$r = \%var;

print "Value of %var is : ", %r, "\n";

$var = 10;
$r = \$var; 
print "Reference type in r : ", ref($r), "\n\n";

@var = (1,2,3);
$r = \@var;
print "Reference type in r : ", ref($r), "\n\n";

%var = ('key1' => 1, 'key2' => 2);
$r = \%var;
print "Reference type in r : ", ref($r), "\n\n";

my $foo = 100;
$foo = \$foo;

print "Value of foo : ", $$foo, "\n\n";

sub PrintHash {
    my (%hash) = @_;
    foreach $item (keys %hash){
        print "Item : $item\tValue : $hash{$item}\n\n";
    }
}

%hash = ('name' => 'Tom', 'age' => 19);

$cref = \&PrintHash;

&$cref(%hash);

