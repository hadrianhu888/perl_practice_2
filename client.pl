package client; 

=begin
!/usr/bin/perl -w
=cut  

use strict;
use Socket qw(:DEFAULT :crlf);
use IO::Socket;

my $host = shift || 'localhost';
my $port = shift || 7890;
my $server = "localhost";  # Host IP running the server

# create a socket, make it reusable
socket(SOCKET, PF_INET, SOCK_STREAM, getprotobyname('tcp'))
    or die "Can't open socket $!\n";
connect( SOCKET, pack_sockaddr_in($port, inet_aton($server)) ) 
    or die "Can't connect to port $port! \n";

my $line;
while ($line = <SOCKET>) {
    print "$line";
}

close SOCKET or die "close: $!";
