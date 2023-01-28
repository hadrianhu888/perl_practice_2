# perl hashes 

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

# creating hashes 

$data{'key1'} = 10;
$data{'key2'} = 20;
$data{'key3'} = 30;

%data = ('key1', 10, 'key2', 20, 'key3', 30);

# print out the hash table in a  foreach loop

foreach $key (keys %data) {
    print "$key => $data{$key}\n\n";
}

%data = ('John Paul', 45, 'Lisa'=> 30, 'Kumar', 40);

# accessing has elements 

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

# extracing keys and values

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
@array = @data{'John Paul', 'Lisa'};
print "Given array is : @array\n";

@keys = keys %data;

print "Given hash keys are : @keys\n";

@vals = values %data;

print "Given hash values are : @vals\n";

# checking a hash exists 

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
if (exists($data{'John Paul'})) {
    print "John Paul's age is $data{'John Paul'}\n";
} else {
    print "I don't know age of John Paul.\n";
}

# getting hash size 

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

@keys = keys %data;
$size = @keys;
print "Size of hash is : $size\n";

@values = values %data;
$size = @values;
print "Size of hash is : $size\n";

# adding and removing elements in a hash table 

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
@keys = keys %data;
$size = @keys;
print "Size of hash is : $size\n";

$data{'Ali'} = 50;
@keys = keys %data;
$size = @keys;
print "Size of hash is : $size\n";

delete $data{'Ali'};
@keys = keys %data;
$size = @keys;
print "Size of hash is : $size\n";


