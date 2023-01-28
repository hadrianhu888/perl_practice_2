# Description: Perl IO Library
=comment 
#Perl IO Library
=cut 

open(DATA,"data.txt") or die "Couldn't open file file_name.txt, $!";

while (<DATA>){
    print $_;
}

close(DATA);

open(DATA,">data.txt") or die "Couldn't open file file_name.txt, $!";
print DATA "This is a test file\n";
close(DATA);

open(DATA,"+<data.txt") or die "Couldn't open file file_name.txt, $!";
print DATA "This is a test file\n";
close(DATA);

open(DATA,"+>>data.txt") or die "Couldn't open file file_name.txt, $!";
print DATA "This is a test file\n";
close(DATA);

open(DATA,"<data.txt") or die "Couldn't open file file_name.txt, $!";
while (<DATA>){
    print $_;
}
close(DATA);

sysopen(DATA,"data.txt",O_RDONLY) or die "Couldn't open file file_name.txt, $!";
while (<DATA>){
    print $_;
}
close(DATA);

# close(DATA) or die "Couldn't close file properly";

print "What is your name?\n\n";
$name = <STDIN>;
print "Hello $name\n\n";

open(DATA,"<import.txt") or die "Couldn't open file file_name.txt, $!";
while (<DATA>){
    print $_;
}
close(DATA);

=comment
print FILEHANDLE LIST or die "Couldn't print to the file properly";
print LIST
print 
=cut 

print "\n\nHello, World!\n\n";

# Copying files 

open(DATA1, "<file1.txt") or die "Couldn't open file file_name.txt, $!";
open(DATA2, ">file2.txt") or die "Couldn't open file file_name.txt, $!";

while (<DATA1>){
    print DATA2 $_;
}

close(DATA1);
close(DATA2);

# Renaming a file 

rename("file1.txt","file3.txt") or die "Couldn't rename file";

unlink("file3.txt") or die "Couldn't delete file";

my $file = "file1.txt";
my (@description,$size);
if (-e $file){
    print "File exists\n\n";
    #@description = stat($file);
    #$size = $description[7];
    #print "File size : $size\n\n";
    $size = -s $file;
    push @description,'binary' if (-B _); 
    push @description,'text' if (-T _);
    push @description,'readable' if (-R _);
    push @description,'writable' if (-W _);
    push @description,'executable' if (-X _);
    push @description,'empty' if (-z _);
    push @description,'non-empty' if (-s _);
    push @description,'a directory' if (-d _); 
    push @description,'a file' if (-f _);
    push @description,'a symbolic link' if (-l _);
    push @description,'a socket' if (-S _);
    push @description,'a pipe' if (-p _);
    push @description,'a tty' if (-t _);
    push @description,'setuid' if (-u _);
    push @description,'setgid' if (-g _);
    push @description,'sticky' if (-k _);
    push @description,'owned by the effective uid' if (-o _);
    push @description,'has its setuid bit set' if (-u _);
    push @description,'has its setgid bit set' if (-g _);
    push @description,'has its sticky bit set' if (-k _);
    push @description,'has its setuid bit set' if (-u _);
    push @description,'has its setgid bit set' if (-g _);
    push @description,'has its sticky bit set' if (-k _);
    push @description,'has its setuid bit set' if (-u _);
    push @description,'has its setgid bit set' if (-g _);
    push @description,'has its sticky bit set' if (-k _);
    push @description,'has its setuid bit set' if (-u _);
} 

open(DATA,"<file1.txt") or die "Couldn't open file file_name.txt, $!";
while (<DATA>){
    print $_;
}
close(DATA);

