import Person from oop.Person;
use Person;
use strict;
use warnings;
use Test::Simple tests => 1;
our @ISA = qw(Person); # Inheritance

# Tests the Person class 

my $object = TestPerson->new("John", "Doe", "123-45-6789");
$object->setFirstName("John");
my $firstName = $object->getFirstName();
ok($firstName eq "John", "First name is John");
print "First Name : $firstName\n";

# Path: oop\TestPerson.pl
