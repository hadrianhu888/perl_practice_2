$integer = 200;
$negative = -300; 
$floating = 200.31545; 
$big_float = -1.2e-23;

$octal = 0377;
$hexa = 0xff;

# These are examples of scalars in perl

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "big_float = $big_float\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

# This is how scalar operations are defined in perl   

$var = "This is a string scalar!\n\n"; 
$quote = 'This is a string scalar! - $var';
$double = "This is inside double quote - $var";

print "var = $var\n\n";
print "quote = $quote\n\n";
print "double = $double\n\n";

# These are examples of string operations in perl

$str = "hello" . "world";
$num = 5 + 10;
$mul = 4 * 5;
$mix = $str . $num;

print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n";
print "mix = $mix\n";

$string = 'This is 
a multiline 
still a string '; 

print "$string";

# Below are examplso of v-string operations in perl

$smile = v9786;
$foo = v102.111.111;
$martin = v77.

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

# #Examples of special literals in perl

print "File name ". __FILE__ . "\n";
print "Line number ". __LINE__ . "\n";
print "Package ". __PACKAGE__ . "\n";

print "__FILE__ __LINE__ __PACKAGE__\n";

