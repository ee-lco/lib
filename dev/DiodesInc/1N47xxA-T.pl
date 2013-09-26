#!/usr/bin/perl
use strict;
use warnings;

for (my $t = 28; $t <= 61; $t++) {
    my $pn = sprintf("1N47%02dA", $t);

    my $fh;
    open($fh, ">", "DiodesInc/${pn}-T");
    print $fh <<"EOT";
attr    footprint=d-do-41.fp
attr    pinmap=K=1
attr    pinmap=A=2
attr    manuf=Diodes Inc
attr    manuf-pn=${pn}-T
attr    digikey-pn=${pn}DICT-ND
attr    mouser-pn=621-${pn}-T
EOT
    close($fh);
}