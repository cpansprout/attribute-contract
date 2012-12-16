package ContractTest;

use strict;
use warnings;

use base 'TestBase';

use Test::More;
use Test::Fatal;

use lib 't/tests/ContractTest';

use WithContract;
use InheritContract;
use InheritContractWithOverride;

sub handle_contract : Test {
    my $self = shift;

    ok(exception { WithContract->new->method(\1) });
}

sub inherit_contract : Test {
    my $self = shift;

    ok(exception { InheritContract->new->method(\1) });
}

sub inherit_contract_with_override : Test {
    my $self = shift;

    ok(exception { InheritContractWithOverride->new->method(\1) });
}

1;
