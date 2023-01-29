package Person; 
use strict; 
use warnings;
our @ISA = qw/oop\Person/; # Inheritance

sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };
    # Print all the values just for clarification.
    print "First Name is $self->{_firstName}\n";
    print "Last Name is $self->{_lastName}\n";
    print "SSN is $self->{_ssn}\n";
    bless $self, $class;
    return $self;
}

sub setFirstName {
    my ( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

sub getFirstName {
    my( $self ) = @_;
    return $self->{_firstName};
}

1;

# Path: oop\Employee.pm

my $object = Person->new("John", "Doe", "123-45-6789");
$object->setFirstName("John");
my $firstName = $object->getFirstName();
print "First Name : $firstName\n";

package Employee; 
use strict;
use warnings;
our @ISA = qw(Person); # Inheritance

sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
        _salary    => shift,
    };
    # Print all the values just for clarification.
    print "First Name is $self->{_firstName}\n";
    print "Last Name is $self->{_lastName}\n";
    print "SSN is $self->{_ssn}\n";
    print "Salary is $self->{_salary}";
    bless $self, $class;
    return $self;
}

sub getFirsrName {
    my( $self ) = @_;
    return $self->{_firstName};
}

sub getLastName {
    my( $self ) = @_;
    return $self->{_lastName};
}

sub getSSN {
    my( $self ) = @_;
    return $self->{_ssn};
}

sub getSalary {
    my( $self ) = @_;
    return $self->{_salary};
}  

1;

# Path: oop\TestEmployee.pl

use Employee;

my $object = Employee->new("John", "Doe", "123-45-6789", 10000);
my $firstName = $object->getFirstName();
print "First Name : $firstName\n" unless !defined($firstName);

my $lastName = $object->getLastName();
print "Last Name : $lastName\n" unless !defined($lastName);

$object->setLastName($lastName);
$firstName = $object->getFirstName();
print "First Name : $firstName\n" unless !defined($firstName);

sub AUTOLOAD {
    my $self = shift;
    my $type = ref($self) or die "$self is not an object";
    my $field = $AUTOLOAD;
    $field =~ s/.*://;   # strip fully-qualified portion
    unless ( exists $self->{$field} ) {
        die "Can't access '$field' field in object of class $type";
    }
    if (@_) {
        return $self->{$field} = shift;
    } else {
        return $self->{$field};
    }
}

sub DESTROY {
    my $self = shift;
    print "Destroying $self->{name}\n";
}

1;

# Path: oop\TestAutoLoad.pl

use AutoLoad;

# Test what the AutoLOAD and DESTROY methods do 
my $object = AutoLoad->new("John", "Doe", "123-45-6789", 10000);
my $firstName = $object->getFirstName();
print "First Name : $firstName\n" unless !defined($firstName);

package MyClass; 

sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
        _salary    => shift,
    };
    # Print all the values just for clarification.
    print "First Name is $self->{_firstName}\n";
    print "Last Name is $self->{_lastName}\n";
    print "SSN is $self->{_ssn}\n";
    print "Salary is $self->{_salary}\n";
    bless $self, $class;
    return $self;
}

sub DESTROY {
    my $self = shift;
    print "Destroying $self->{name}\n";
}

sub MyMethod {
    my $self = shift;
    print "Hello World\n";
}

package MySubClass;
@ISA = qw(MyClass);

sub new {
    print "New SubClass\n";
    my $type = shift;
    my $self = MyClass->new(@_);
    return bless $self, $type;
}

sub DESTROY {
    my $self = shift;
    print "Destroying $self->{name}\n";
}

sub MyMethod {
    my $self = shift;
    print "Hello World\n";
}

package main;

print "Invoke my class method\n";

$myObject = new MyClass->new();
$myObject->MyMethod();
print "Invoke my subclass method\n";

$myObject2 = new MyClass->new();
$myObject2->MyMethod();
print "Invoke my subclass method\n";

print "Create a scoped object\n\n";
    
    {
        my $myObject3 = new MyClass->new();
        $myObject3->MyMethod();
    }

print "Create and undef an object\n\n";

$myObject3 = new MyClass->new();
undef $myObject3;

print "Fall off the end of the script...\n\n";

