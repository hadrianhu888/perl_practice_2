@files = `ls -l`; # list files in current directory
foreach $file (@files) {
    print "$file";
}

system ("ls -l");

1; 

# Path: src\process_management\process.pl



