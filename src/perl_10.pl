@days = qw(Mon Tue Wed Thu Fri Sat Sun);
@months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
print "$days[$wday] $months[$mon] $mday $hour:$min:$sec $year\n\n";

$datestring = localtime();
print "Local date and time $datestring\n\n";

$datestring = gmtime();
print "GMT date and time $datestring\n\n";

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
print "Time Format - HH:MM:SS\n";
printf("%02d:%02d:%02d", $hour, $min, $sec);

$epoc = time();
print "The number of seconds since January 1, 1970 is $epoc\n\n";

$datestring = localtime();
print "Local date and time $datestring\n\n";

$epc = time();
$epoc = $epc - 24*60*60;
$datestring = localtime($epoc);
print "Yesterday's date and time was $datestring\n\n";

use POSIX qw(strftime);
$datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
print "Local date and time $datestring\n\n";

# or for GMT formatted appropriately for your locale: 

$datestring = strftime "%a %b %e %H:%M:%S %Y\n\n", gmtime;
printf ("GMT date and time $datestring\n\n");



