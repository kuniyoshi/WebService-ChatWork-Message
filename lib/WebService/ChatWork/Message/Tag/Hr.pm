use strict;
use warnings;
package WebService::ChatWork::Message::Tag::Hr;
use overload q{""} => \&as_string;
use Mouse;

sub as_string { "[hr]" }

1;
