
sub BubbleSort {
  my @array = @_;

  for my $i (0 .. $#array - 1) {
    for my $j (0 .. $#array - $i - 1) {
      if ($array[$j] > $array[$j + 1]) {
        ($array[$j], $array[$j + 1]) = ($array[$j + 1], $array[$j]);
      }
    }
  }

  return @array;
}

1;
