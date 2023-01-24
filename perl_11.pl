sub Hello {
    print "Hello, World!";
}

Hello();

sub Average {
    # get total number of arguments passed.
    $n = scalar(@_);
    $sum = 0;
    foreach $item (@_){
        $sum += $item;
    }
    $average = $sum / $n;
    print "Average for the given numbers : $average\n\n";
}
Average(10, 20, 30);

sub PrintList {
    foreach $item (@_){
        print "Item: $item\n\n";
    }
}
$a = 10;
@b = (1, 2, 3, 4);

PrintList($a,@b);

sub PrintHash {
    my (%hash) = @_;
    foreach $item (keys %hash){
        print "Item : $item\tValue : $hash{$item}\n\n";
    }
}

%hash = ('name' => 'Tom', 'age' => 19);
PrintHash(%hash);

sub Average {
    # get total number of arguments passed.
    $n = scalar(@_);
    $sum = 0;
    foreach $item (@_){
        $sum += $item;
    }
    return $average; 
    $average = $sum / $n;
    print "Average for the given numbers : $average\n\n";
}

$num = Average(10, 20, 30);
print "Return value of the function $num\n\n";

sub somefunc {
    my $var = 10;
    print "Value of the variable inside the function $var\n\n";
}

$string = "Hello, World!";

sub PrintHello {
    my $string;
    $string = "Hello, Perl!";
    print "Inside the function $string\n\n";
}

PrintHello();
print "Outside the function $string\n\n";

use feature 'state';
sub PrintCount {
    state $count = 0;
    print "Value of count is $count\n\n";
    $count++;
}

# subroutine call context example

for (1..5){
    PrintCount();
}

my $datestring = localtime(time());
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time());

