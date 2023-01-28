
use lib $ENV{PWD}; # inherits from Person1 package
use My::Employee;
use My::Person1;

$object = new Employee("John Paul", "Jones", "123-45-6789", "123 Main St.");
$firstName = $object->getFirstName();
print "First Name is $firstName\n";

print "Before setting First Name is: ", $object->getFirstName(), "\n";

# Now use the helper function to set the first name
$object->setFirstName("John");
$firstName = $object->getFirstName();
print "First Name is $firstName\n";

print "After setting First Name is: ", $object->getFirstName(), "\n";

