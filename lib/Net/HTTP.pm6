class Net::HTTP;

has $!host;
has $!send_te;
has $!keep_alive;
has $!max_line_length;
has $!max_header_lines;
has $!http_version;
has $!peer_http_version;

method !configure { ... }

method !http_connect { ... }

multi method host($h) { $!host = $h }
multi method host()   { $!host }

multi method keep_alive($ka) { $!keep_alive = $ka }
multi method keep_alive      { $!keep_alive }

multi method send_te($st) { $!send_te = $st }
multi method send_te      { $!send_te }

multi method max_line_length(Int $mll) { $!max_line_length = $mll }
multi method max_line_length           { $!max_line_length = 8192 unless $!max_line_length.defined; $!max_line_length }

multi method max_header_length(Int $mhl) { $!max_header_lines = $mhl }
multi method max_header_length           { $!max_header_lines = 128 unless $!max_header_lines.defined; $!max_header_lines }

multi method http_version($hv) { $!http_version = $hv }
multi method http_version      { $!http_version = '1.1' unless $!http_version.defined; $!http_version }

multi method peer_http_version($phv) { $!peer_http_version = $phv }
multi method peer_http_version       { $!peer_http_version = '1.1' unless $!peer_http_version.defined; $!peer_http_version }

method format_request { ... }

method write_request { ... }

method format_chunk { ... }

method write_chunk { ... }

method read_response_headers { ... }
