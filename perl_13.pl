# formatting in Perl

write EMPLOYEE; 

select(STDOUT);

$~ = "EMPLOYEE"; 

format EMPLOYEE =
=======================================
@<<<<<<<<<<<<<<<<<< @<<
$name, $age
@#####.##
$salary
=======================================
. 
select(STDOUT);
$~ = "EMPLOYEE";

@n = ("Ali", "Bob", "Chris", "David");
@a = (20, 30, 40, 50);
@s = (2000.00, 3000.00, 4000.00, 5000.00);

$i = 0; 
foreach (@n){
    $name = $_;
    $age = $a[$i];
    $salary = $s[$i++];
    write;
}

format EMPLOYEE_TOP =
=======================================
@<<<<<<<<<<<<<<<<<< @<<
$name, $age
@#####.##
$salary
=======================================
.

select(STDOUT);
$~ = "EMPLOYEE";
$^ = "EMPLOYEE_TOP";

@n = ("Ali", "Bob", "Chris", "David");
@a = (20, 30, 40, 50);
@s = (2000.00, 3000.00, 4000.00, 5000.00);

$i = 0;
foreach (@n){
    $name = $_;
    $age = $a[$i];
    $salary = $s[$i++];
    write;
}

# Define a pagination 

format EMPLOYEE_BOTTOM = 
End of Page @<
$% 
.


