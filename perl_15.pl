# Perl Directories 
# !/usr/bin/perl

# Display all the files and directories
$dir = "/tmp/";
my @files = glob ($dir);
foreach my $file (@files) {
    print "$file\n\n";
}

$dir = "/tmp/*.c";
my @files = glob ($dir);
foreach my $file (@files) {
    print "$file\n\n";
}

$dir = "/tmp/.*";
my @files = glob ($dir);
foreach my $file (@files) {
    print "$file\n\n";
}

$dir = "/tmp/* /home/*";
my @files = glob ($dir);
foreach my $file (@files) {
    print "$file\n\n";
}

opendir(DIR, '.') or die "Couldn't open dirqectory, $!";
while (my $file = readdir(DIR)) {
    print "$file\n";
}

closedir DIR or die "Couldn't close dirqectory, $!";

opendir(DIR, ".") or die "Couldn't open dirqectory, $!";
foreach (sort grep(!/^\.\.?$/, readdir(DIR))) {
    print "$_\n\n";
}

# close(DIR) or die "Couldn't close dirqectory, $!";

$dir = "/tmp/perl"; 
mkdir($dir) or die "Couldn't mkdir $dir in tmp directory, $!";
print "Directory created: $dir\n successfully created\n\n";

close($dir) or die "Couldn't close dirqectory, $!";

$dir = "/home/";
rmdir($dir) or die "Couldn't rmdir $dir in home directory, $!";
print "Directory removed: $dir\n successfully removed\n\n";

close($dir) or die "Couldn't close dirqectory, $!";

$dir = "/home/";
chdir($dir) or die "Couldn't chdir $dir in home directory, $!";
print "Directory changed: $dir\n successfully changed\n\n";

close($dir) or die "Couldn't close dirqectory, $!";

$dir = "/home/";
chroot($dir) or die "Couldn't chroot $dir in home directory, $!";
print "Directory changed: $dir\n successfully changed\n\n";
