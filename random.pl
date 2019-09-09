
my $logfile = "";

open FILE, ">random.txt" or die $!;

for(1..10) {
  for(1..18){
  $i=int(rand(2));
  if($i==0){$id .= chr(int(rand(25))+65);}#65-90 A-Z
  else{$id .= int(rand(9));} # 0-9
  }
print FILE $id, "\n";
$id = "";
}

close FILE;