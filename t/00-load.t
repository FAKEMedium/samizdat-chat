use strict; use warnings; use Test::More;
use_ok('Samizdat::Model::Chat');
use_ok('Samizdat::Controller::Chat');
use_ok('Samizdat::Plugin::Chat');
use File::Spec;
my ($d) = grep { -d } map { File::Spec->catdir($_, 'Samizdat','resources') } @INC;
ok($d && -d File::Spec->catdir($d,'templates','chat'), 'chat templates ship');
done_testing;
