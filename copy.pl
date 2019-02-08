#!/usr/bin/perl 

use utf8; #not really necessary
binmode STDOUT, ":utf8"; 

open (META, "fiction_metadata_1920-22.csv") or die "Can't: $!";
binmode(META, ":utf8");

while (<META>) {
  
  
  @sp=split/,/;
  
  $record = $sp[0];
  $record=~ s/\"//g;
  
  if ($record eq "htid") {
    next;
  }
  
  $fi = $record;
  $fi = $fi."\.tsv";

if ($fi =~ m/\$/) {
    
    $fi =~ s/\$/\\\$/g; # '$' characters in hathi ids cause problems if not escaped
    

}
  
  `cp tsv/$fi 20-22-tsv/$fi`;
  }


