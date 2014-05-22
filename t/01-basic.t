use Test;

use Net::HTTP;

my $s = Net::HTTP.new;
ok $s, 'new 1/?';

ok $s.host('test'), 'host 1/?';
is $s.host, 'test', 'host 2/?';

ok $s.keep_alive(True), 'keep_alive 1/?';
is $s.keep_alive, True, 'keep_alive 2/?';

ok $s.send_te('test'), 'send_te 1/?';
is $s.send_te, 'test', 'send_te 2/?';

is $s.http_version, '1.1', 'http_version 1/?';
ok $s.http_version('1.0'), 'http_version 2/?'; # new value
is $s.http_version, '1.0', 'http_version 3/?';

is $s.peer_http_version, '1.0', 'peer_http_version 1/?';
ok $s.peer_http_version('1.1'), 'peer_http_version 2/?'; # new value
is $s.peer_http_version, '1.1', 'peer_http_version 3/?';

is $s.max_line_length, 8192, 'max_line_length 1/?';
ok $s.max_line_length(0) == 0, 'max_line_length 2/?'; # new value
is $s.max_line_length, 0, 'max_line_length 3/?';

is $s.max_header_length, 128, 'max_header_length 1/?';
ok $s.max_header_length(0) == 0, 'max_header_length 2/?'; #new value
is $s.max_header_length, 0, 'max_header_length 3/?';

#ok $s.format_request, 'format_request 1/?';
#ok $s.write_request, 'write_request 1/?';
