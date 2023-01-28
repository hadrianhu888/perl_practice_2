package employee;
#!/usr/bin/perl -I 
use strict;
use warnings;
use Person1;
FindBin::libs;

# Modify @INC prior to module loading.
BEGIN { unshift @INC, '.'; }

$object = new Person1("John Paul", "Jones", "123-45-6789");
$firstName = $object->getFirstName();
print "First Name is $firstName\n";

# Now use the helper function to set the first name
$object->setFirstName("John");
$firstName = $object->getFirstName();
print "First Name is $firstName\n";

our @INC = qw(Person1); # inherits from Person1 package

