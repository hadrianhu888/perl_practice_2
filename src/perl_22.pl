use MIME::Lite;

# sending a plain text message

$to = 'abcd@gmail.com';
$from = 'hadrian.hu@gmail.com';
$subject = 'Test Email';
$message = 'This is a test';
open(MAIL, "|/usr/sbin/sendmail -t");

print MAIL "To: $to"; 
print MAIL "From: $from";
print MAIL "Subject: $subject";
print MAIL $message;
close(MAIL);
print "Email Sent Successfully\n";

# sending an HTML message 

$to = 'abcd@gmail.com';
$from = 'hadrian.hu@gmail.com';
$subject = 'Test Email';
$message = '<h1>This is a test</h1>';
open(MAIL, "|/usr/sbin/sendmail -t");

# email header

print MAIL "To: $to";
print MAIL "From: $from";
print MAIL "Subject: $subject";
print MAIL "MIME-Version: 1.0";
print MAIL "Content-type: text/html";
print MAIL "Content-Transfer-Encoding: 8bit";
print MAIL $message;

close(MAIL);
print "Email Sent Successfully\n";

$to = 'abcd@gmail.com';
$cc = 'def@gmail.com';
$from = 'hadrian.hu@gmail.com';
$subject = 'Test Email';
$message = 'This is a test sent by Perl Script';
$msg = MIME::Lite->new(
    From => $from,
    To => $to,
    Cc => $cc,
    Subject => $subject,
    Data => $message
);
$msg->send;
print "Email Sent Successfully\n";

# sending an HTML messge 

$to = 'abcd@gmail.com';
$cc = 'def@gmail.com';
$from = 'hadrian.hu@gmail.com';
$subject = 'Test Email';
$message = 'This is a test sent by Perl Script';
$msg = MIME::Lite->new(
    From => $from,
    To => $to,
    Cc => $cc,
    Subject => $subject,
    Type => 'text/html',
    Data => $message
);
$msg->attr("content-type" => "text/html");
$msg->send;
print "Email Sent Successfully\n";

# sending an HTML message with attachment

$to = 'abcd@gmail.com';
$cc = 'def@gmail.com';
$from = 'hadrian.hu@gmail.com';
$subject = 'Test Email';
$message = 'This is a test sent by Perl Script';
$msg = MIME::Lite->new(
    From => $from,
    To => $to,
    Cc => $cc,
    Subject => $subject,
    Type => 'multipart/mixed'
);
$msg->attach(
    Type => 'TEXT',
    Data => $message
);
$msg->attach(
    Type => 'image/jpg',
    Path => '/home/hadrian/Pictures/1.jpg',
    Filename => '1.jpg',
    Disposition => 'attachment'
);
$msg->send;
$msg->send('smtp', "smtp.myisp.net", AuthUser=>"id", AuthPass=>"password" );
print "Email Sent Successfully\n";

# sending a message with SMTP authentication

