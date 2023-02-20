
sub ShellSort {
  my @array = @_;

  my $gap = int(@array / 2);
  while ($gap > 0) {
    for my $i ($gap .. $#array) {
      my $temp = $array[$i];
      my $j = $i;
      while ($j >= $gap && $array[$j - $gap] > $temp) {
        $array[$j] = $array[$j - $gap];
        $j -= $gap;
      }
      $array[$j] = $temp;
    }
    $gap = int($gap / 2);
  }

  return @array;
}

1;
