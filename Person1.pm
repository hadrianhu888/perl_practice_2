package Person1; 
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

sub getFirstName {
    my( $self ) = @_;
    return $self->{_firstName};
}

sub setFirstName {
    my( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

sub getLastName {
    my( $self ) = @_;
    return $self->{_lastName};
}

sub setLastName {
    my( $self, $lastName ) = @_;
    $self->{_lastName} = $lastName if defined($lastName);
    return $self->{_lastName};
}

sub getSSN {
    my( $self ) = @_;
    return $self->{_ssn};
}

sub setSSN {
    my( $self, $ssn ) = @_;
    $self->{_ssn} = $ssn if defined($ssn);
    return $self->{_ssn};
}

1;