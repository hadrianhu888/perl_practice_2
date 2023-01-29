use DBI
use strict;

my $driver = "SQLite";
my $database = "test.db";
my $dsn = "DBI:$driver:dbname=$database";
my $userid = "testuser";
my $password = "testpassword";

my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
    or die $DBI::errstr;

# INSERT OPERATION

my $sth = $dbh->prepare("INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) vlues (1, 'Paul', 32, 'California', 20000.00);");
$sth->execute() or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;

# USE BIND VALUES 

my $first_name = 'Allen';
my $last_name = 'Turing';
my $sex = 'M';
my $birth_date = '1912-06-23';
my $death_date = '1954-06-07';
my $income = 1000000;
my $age = 41;
my $sth = $dbh->prepare("INSERT INTO TEST_TABLE (FIRST_NAME< LAST_NAME, SEX, BIRTH_DATE, DEATH_DATE, INCOME, AGE) values (?, ?, ?, ?, ?, ?);");
$sth->execute($first_name, $last_name, $sex, $birth_date, $death_date, $income, $age) or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;

# READ OPERATION

my $sth = $dbh->prepare("SELECT id, name, address, salary FROM COMPANY");
$sth->execute() or die $DBI::errstr;
print "Number of rows found : $sth->rows\n";
while (my @row = $sth->fetchrow_array()) {
    print "ID = $row[0]";
    print "NAME = $row[1]";
    print "ADDRESS = $row[2]";
    print "SALARY = $row[3]\n";
    }
$sth->finish();

# USE BIND OPERATIOSN 

my $id = 1;
my $sth = $dbh->prepare("SELECT id, name, address, salary FROM COMPANY where ID = ?;");
$sth->execute($id) or die $DBI::errstr;
print "Number of rows found : $sth->rows\n";
while (my @row = $sth->fetchrow_array()) {
    print "ID = $row[0]";
    print "NAME = $row[1]";
    print "ADDRESS = $row[2]";
    print "SALARY = $row[3]\n";
    }
$sth->finish();

# UPDATE OPERATION

my $sth = $dbh->prepare("UPDATE COMPANY set SALARY = 25000.00 where ID = 1;");
$sth->execute() or die $DBI::errstr;
print "Number of rows affected : $sth->rows\n";
$sth->finish();
$dbh->commit or die $DBI::errstr;

# USE BIND VALUES

my $salary = 30000.00;
my $id = 1;
my $sth = $dbh->prepare("UPDATE COMPANY set SALARY = ? where ID = ?;");
$sth->execute($salary, $id) or die $DBI::errstr;
print "Number of rows affected : $sth->rows\n";
$sth->finish();
$dbh->commit or die $DBI::errstr;

my $sex = 'M';
my $id = 1;
my $sth = $dbh->prepare("SELECT SEX FROM TEST_TABLE where ID = ?;");
$sth->execute($id) or die $DBI::errstr;
print "Number of rows found : $sth->rows\n";
$sth -> bind_col(1, \$sex);
$sth -> fetch();
$sth -> finish();
$dbh->commit or die $DBI::errstr;

# DELETE OPERATION

my $sth = $dbh->prepare("DELETE from COMPANY where ID = 2;");
$sth->execute() or die $DBI::errstr;
print "Number of rows deleted : $sth->rows\n";
$sth->finish();
$dbh->commit or die $DBI::errstr;

# Using do statement

my $sth = $dbh->do("DELETE from COMPANY where ID = 3;") or die $DBI::errstr;

# COMMIT OPERATION

$dbh->commit or die $DBI::errstr;

# ROLLBACK OPERATION

$dbh->rollback or die $DBI::errstr;

# DROP TABLE

my $sth = $dbh->prepare("DROP TABLE COMPANY;");

# DROP TABLE IF EXISTS

my $sth = $dbh->prepare("DROP TABLE IF EXISTS COMPANY;");

# CREATE TABLE

my $sth = $dbh->prepare("CREATE TABLE COMPANY(ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, AGE INT NOT NULL, ADDRESS CHAR(50), SALARY REAL);");

# CREATE TABLE IF NOT EXISTS

my $sth = $dbh->prepare("CREATE TABLE IF NOT EXISTS COMPANY(ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, AGE INT NOT NULL, ADDRESS CHAR(50), SALARY REAL);");

# AUTCOMMITS

my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1, AutoCommit => 0 })
    or die $DBI::errstr;

# TRANSACTION

$dbh->begin_work or die $DBI::errstr;

# TRANSACTION WITH SAVEPOINT

$dbh->begin_work or die $DBI::errstr;

my $sth = $dbh->prepare("INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) vlues (1, 'Paul', 32, 'California', 20000.00);");
$sth->execute() or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;

$dbh->begin_work or die $DBI::errstr;

# AUTOMATIC ERROR HANDLING

my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1, AutoCommit => 0 })
    or die $DBI::errstr;

# DISCONNECTING FROM DATABASE

$rc = $dbh->disconnect or warn $dbh->errstr;

# USING NULL VALUES

my $sth = $dbh->prepare("INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) values (1, 'Paul', 32, 'California', 20000.00);");
$sth->execute() or die $DBI::errstr;

$sql_clause = defined $age? "AGE = $age" : "AGE IS NULL";
$sth = $dbh->prepare(qq{UPDATE COMPANY set $sql_clause where ID = 1;});
$sth->execute() or die $DBI::errstr;

# OTHER DBI FUNCTIONS 

@ary = DBI->available_drivers($quiet);
@ary = DBI->installed_drivers();

# DBI STATEMENTS

$rc = $dbh->commit or die $dbh->errstr;
$rc = $dbh->rollback or die $dbh->errstr;
$rc = $dbh->disconnect or die $dbh->errstr;
$rc = $dbh->begin_work or die $dbh->errstr;
$rc = $dbh->ping or die $dbh->errstr;
$rc = $dbh->do($statement) or die $dbh->errstr;
$rc = $dbh->prepare($statement) or die $dbh->errstr;
$rc = $dbh->prepare_cached($statement) or die $dbh->errstr;
$rc = $dbh->func($function_name, @function_args) or die $dbh->errstr;
$rc = $dbh->type_info($data_type) or die $dbh->errstr;
$rc = $dbh->type_info_all or die $dbh->errstr;
$rc = $dbh->get_info($info_type) or die $dbh->errstr;
$rc = $dbh->quote($string, $data_type) or die $dbh->errstr;
$rc = $dbh->quote_identifier($identifier, $catalog, $schema, $type, $is_quoted) or die $dbh->errstr;
$rc = $dbh->selectall_arrayref($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->selectall_array($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->selectcol_arrayref($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->selectcol_array($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->selectrow_arrayref($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->selectrow_array($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->selectrow_hashref($statement, \%attr, @bind_values) or die $dbh->errstr;
$rc = $dbh->last_insert_id(undef, undef, undef, undef) or die $dbh->errstr;

# DBI STATEMENT HANDLES

$rc = $sth->execute(@bind_values) or die $sth->errstr;
$rc = $sth->fetch or die $sth->errstr;
$rc = $sth->fetchrow_arrayref or die $sth->errstr;
$rc = $sth->fetchrow_array or die $sth->errstr;
$rc = $sth->fetchrow_hashref or die $sth->errstr;
$rc = $sth->fetchall_arrayref or die $sth->errstr;
$rc = $sth->fetchall_array or die $sth->errstr;
$rc = $sth->fetchall_hashref or die $sth->errstr;
$rc = $sth->rows or die $sth->errstr;
$rc = $sth->finish or die $sth->errstr;
$rc = $sth->bind_columns(\@bind_columns) or die $sth->errstr;
$rc = $sth->bind_param($param_num, $value, \%attr) or die $sth->errstr;
$rc = $sth->bind_param_inout($param_num, \$value, $maxlen, \%attr) or die $sth->errstr;
$rc = $sth->bind_col($col_num, \$value, \%attr) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;
$rc = $sth->rows or die $sth->errstr;
$rc = $sth->finish or die $sth->errstr;
$rc = $sth->bind_columns(\@bind_columns) or die $sth->errstr;
$rc = $sth->bind_param($param_num, $value, \%attr) or die $sth->errstr;
$rc = $sth->bind_param_inout($param_num, \$value, $maxlen, \%attr) or die $sth->errstr;
$rc = $sth->bind_col($col_num, \$value, \%attr) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;
$rc = $sth->rows or die $sth->errstr;
$rc = $sth->finish or die $sth->errstr;
$rc = $sth->bind_columns(\@bind_columns) or die $sth->errstr;
$rc = $sth->bind_param($param_num, $value, \%attr) or die $sth->errstr;
$rc = $sth->bind_param_inout($param_num, \$value, $maxlen, \%attr) or die $sth->errstr;
$rc = $sth->bind_col($col_num, \$value, \%attr) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;
$rc = $sth->rows or die $sth->errstr;
$rc = $sth->finish or die $sth->errstr;
$rc = $sth->bind_columns(\@bind_columns) or die $sth->errstr;
$rc = $sth->bind_param($param_num, $value, \%attr) or die $sth->errstr;
$rc = $sth->bind_param_inout($param_num, \$value, $maxlen, \%attr) or die $sth->errstr;
$rc = $sth->bind_col($col_num, \$value, \%attr) or die $sth->errstr;
$rc = $sth->dump_results($maxlen, $lsep, $fsep, $fh) or die $sth->errstr;

# DBI STATEMENT HANDLE ATTRIBUTES

$rc = $sth->{NUM_OF_FIELDS} or die $sth->errstr;
$rc = $sth->{NUM_OF_PARAMS} or die $sth->errstr;
$rc = $sth->{NAME} or die $sth->errstr;
$rc = $sth->{TYPE} or die $sth->errstr;
$rc = $sth->{PRECISION} or die $sth->errstr;
$rc = $sth->{SCALE} or die $sth->errstr;
$rc = $sth->{NULLABLE} or die $sth->errstr;
$rc = $sth->{CursorName} or die $sth->errstr;
$rc = $sth->{Statement} or die $sth->errstr;
$rc = $sth->{NUM_OF_FIELDS} or die $sth->errstr;
$rc = $sth->{NUM_OF_PARAMS} or die $sth->errstr;
$rc = $sth->{NAME} or die $sth->errstr;
$rc = $sth->{TYPE} or die $sth->errstr;
$rc = $sth->{PRECISION} or die $sth->errstr;
$rc = $sth->{SCALE} or die $sth->errstr;
$rc = $sth->{NULLABLE} or die $sth->errstr;
$rc = $sth->{CursorName} or die $sth->errstr;
$rc = $sth->{Statement} or die $sth->errstr;
$rc = $sth->{NUM_OF_FIELDS} or die $sth->errstr;
$rc = $sth->{NUM_OF_PARAMS} or die $sth->errstr;
$rc = $sth->{NAME} or die $sth->errstr;
$rc = $sth->{TYPE} or die $sth->errstr;
$rc = $sth->{PRECISION} or die $sth->errstr;
$rc = $sth->{SCALE} or die $sth->errstr;
$rc = $sth->{NULLABLE} or die $sth->errstr;
$rc = $sth->{CursorName} or die $sth->errstr;

# QUOTE 

$sql = $dbh->quote($string, $data_type) or die $dbh->errstr;
$sql = $dbh->quote_identifier($string) or die $dbh->errstr;


$sql = printf("INSERT INTO %s (%s) VALUES (%s)", $dbh->quote_identifier($table), join(", ", map { $dbh->quote_identifier($_) } @columns), join(", ", map { $dbh->quote($_) } @values)) or die $dbh->errstr;

$quoted = $dbh->quote($string, $data_type) or die $dbh->errstr;
$quoted = $dbh->quote_identifier($string) or die $dbh->errstr;

CONCAT('one', CHAR(12), 'two'), CHAR(13), 'three')

$rv = $h -> err; 
$rv = $h -> errstr;
$rv = $h -> state;

$rv = $h -> rows; 
$rv = $h -> col_number;

# TRACE 

$rv = $h -> trace($level, $filename);

# INTERPOLATED STATEMENTS ARE PROHIBITED

while ($first_name = <>) {
    $sth = $dbh->prepare("SELECT * FROM people WHERE first_name = ?") or die $dbh->errstr;
    $sth->execute($first_name) or die $sth->errstr;
    while (@row = $sth->fetchrow_array) { print "@row\n"; }






