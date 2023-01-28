use Socket qw(:DEFAULT :crlf);
=begin
===============================================
socket(SOCKET, PF_INET, SOCK_STREAM, getprotobyname('tcp')) or die "Can't open socket! \n";

bind(SOCKET, pack_sockaddr_in(80, inet_aton('8800'))) or die "Can't bind to port 80! \n";

listen(SOCKET, 5) or die "listen: $!";

accept(NEW_SOCKET, SOCKET) or die "accept: $!";

send(NEW_SOCKET, "HTTP/1.0 200 OK\r", 1) or die "send: $!";

send(NEW_SOCKET, "Content-type: text/html\r\r", 1) or die "send: $!";
=======================================================
=cut 
$port = 80;
$server_ip_address = '10.12.12.168';
bind(SOCKET, pack_sockaddr_in($port, inet_aton($server_ip_address))) or die "Can't bind to port $port! \n";

$port = 12345; 
$server_ip_address = '10.12.12.168';
bind(SOCKET, pack_sockaddr_in($port, inet_aton($server_ip_address))) or die "Can't bind to port $port! \n";

connect(SOCKET, pack_sockaddr_in($port, inet_aton($server_ip_address))) or die "Can't connect to port $port! \n";

use strict;
use Socket qw(:DEFAULT :crlf);
use IO::Socket;

# use port 7890 as default
my $port = shift || 7890;
my $proto = getprotobyname('tcp');
my $server = "localhost";  # Host IP running the server

# create a socket, make it reusable
socket(SOCKET, PF_INET, SOCK_STREAM, $proto)
    or die "Can't open socket $!\n";
setsockopt(SOCKET, SOL_SOCKET, SO_REUSEADDR, 1) 
    or die "Can't set socket option to SO_REUSEADDR $!\n";

# bind to a port, then listen
bind( SOCKET, pack_sockaddr_in($port, inet_aton($server)) ) 
    or die "Can't bind to port $port! \n";

listen(SOCKET, 5) or die "listen: $!";
print "SERVER started on port $port\n";

# accepting a connection
my $client_addr;
while ($client_addr = accept(NEW_SOCKET, SOCKET)) {
    # send them a message, close connection
    my $name = gethostbyaddr($client_addr, AF_INET );
    print NEW_SOCKET "Smile from the server";
    print "Connection recieved from $name\n";
    close NEW_SOCKET;
}

$perl server.pl& 

!/usr/bin/perl -w 

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

# $ perl client.pl