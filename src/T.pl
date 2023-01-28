# Error Handling in Perl 

package T; 
require Exporter;
@ISA = qw/Exporter/;
@EXPORT = qw/function1/;
@EXPORT = qw/function2/;
@EXPORT = qw/function3/;
@EXPORT = qw/function4/;
@EXPORT = qw/function5/;
@EXPORT = qw/function6/;
use Carp; 
use Carp qw/Cluck/;

sub function1 {
    warn "Error in module functions\n";
}
1;

sub function2 {
    carp "Error in module functions\n";
}
1;

sub function3 {
    cluck "Error in module functions\n";
}
1; 

sub function4 {
    croak "Error in module functions\n";
}

sub function5 {
    confess "Error in module functions\n";
}

sub function6 {
    die "Error in module functions\n";
}


