package person;

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

$object = new Person("John Paul", "Jones", "123-45-6789");

# print out the details from new Person object
print "First Name is $object->{_firstName}\n";
print "Last Name is $object->{_lastName}\n";
print "SSN is $object->{_ssn}\n";
