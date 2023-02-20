
sub SelectionSort {
  my @array = @_;

  for my $i (0 .. $#array - 1) {
    my $min_index = $i;
    for my $j ($i + 1 .. $#array) {
      if ($array[$j] < $array[$min_index]) {
        $min_index = $j;
      }
    }
    ($array[$i], $array[$min_index]) = ($array[$min_index], $array[$i]);
  }

  return @array;
}

1;
