# HTTP header 

print "Content-type: application/octet-stream; name = \"Filenames\"\r\n";
print "Content-disposition: attachment; filename = \"Filenames\"\r\n";

# Actual File Content will go here

open(FILE, "<Filename>") or die "Can't open file: $!";
while (read(FILE, $buffer, 100)) {
    print $buffer;
}

close(FILE);

# Path: src\web2.pl