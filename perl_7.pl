@ages = (25, 30, 40);
@names = ("Hadrian Hu", "John Paul", "Lisa");

# This is an example of how arrays work in perl 

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";

print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

@array = (1,2,3,4,'Hello'); 
@array = qw/This is an array/; 

@days = qw/Monday Tuesday Wednesday Thursday Friday Saturday Sunday/;

$array[0] = Monday;
$array[1] = Tuesday;
$array[2] = Wednesday;
$array[3] = Thursday;
$array[4] = Friday;
$array[5] = Saturday;
$array[6] = Sunday;

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[3]\n";
print "$days[4]\n";
print "$days[5]\n";
print "$days[6]\n";

print $days[-1];
print $days[-7];

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "Given array is : @var_10\n";
print "Given array is : @var_20\n";
print "Given array is : @var_abc\n";

@array = (1,2,3,4,5,6,7,8,9,10);
$array[50] = 100;

$size = @array;
$max_index = $#array;

print "Array size is : $size\n";
print "Max index is : $max_index\n";

@coins = qw/Penny Nickel Dime Quarter/;
print "Given coins are : @coins\n";

push(@coins, "Dollar");
print "Given coins are : @coins\n";

push(@coins, "Half Dollar");
print "Given coins are : @coins\n";

push(@coins, "Pennies", "Nickels", "Dimes", "Quarters");
print "Given coins are : @coins\n";

pop(@coins);
print "Given coins are : @coins\n";

pop(@coins);
print "Given coins are : @coins\n";

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
@weekdays = @days[3,4,5];

print "Weekdays are : @weekdays\n";

@weekends = @days[6,0,1];
print "Weekends are : @weekends\n";

@nums = (1..20);
print "Before : @nums\n";

splice(@nums, 5, 5, 21..25);
print "After : @nums\n";

$var_string = "Rain-Drops-Keep-Falling-On-My-Head";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";
@string = split('-', $var_string);
@names = split(',', $var_names);
print "$string[0]\n";
print "$string[1]\n";
print "$string[2]\n";
print "$string[3]\n";
print "$string[4]\n";
print "$string[5]\n";
print "$string[6]\n";
print "$string[7]\n";
print "$string[8]\n";
print "$string[9]\n";
print "$string[10]\n";
print "$string[11]\n";
print "$string[12]\n";
print "$string[13]\n";
print "$string[14]\n";
print "$string[15]\n";
print "$string[16]\n";
print "$string[17]\n";
print "$string[18]\n";
print "$string[19]\n";
print "$string[20]\n";
print "$string[21]\n";
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";
print "$names[3]\n";
print "$names[4]\n";
print "$names[5]\n";

$string1 = join('-', @string);
$string2 = join(',', @names);

print "$string1\n";
print "$string2\n";

@foods = qw/pizza steak chicken burgers fries/;
print "Before : @foods\n";

@foods = sort(@foods);
print "After : @foods\n";

@foods = reverse(@foods);
print "Reverse : @foods\n";

# $ [ = 1;
print "Food at \@foods[1] = $foods[1]\n";
print "Food at \@foods[2] = $foods[2]\n";

@numbers = (1,3,(4,5),6,7);
print "numbers = @numbers\n";

@odd = (1,3,5,7,9);
@even = (2,4,6,8,10);
@numbers = (@odd, @even);
print "numbers = @numbers\n";

$var = (5,4,3,2,1)[4];
print "Value of var = $var\n";

@list = (5,4,3,2,1)[1..3];
print "Value of list = @list\n";




