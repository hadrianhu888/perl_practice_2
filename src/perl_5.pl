$age = 25; 
$name = "Hadrian Hu";
$salary = 300000.00; 
print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

@ages = (25, 30, 40);
@names = ("Hadrian Hu", "John Paul", "Lisa");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

# This is the first method to assign the values to an array

%data = ('Hadrian Hu', 25, 'John Paul', 30, 'Lisa', 40);
print "\$data{'Hadrian Hu'} = $data{'Hadrian Hu'}\n";
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";

# This is the second method to assign the values to an array

@copy = @names;
$size = @names;

print "Given names are : @names\n";
print "\nSize of the array is : $size\n";

