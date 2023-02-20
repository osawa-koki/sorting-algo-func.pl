
sub InsertionSort {
  my @array = @_;

  for my $i (1 .. $#array) {
    my $value = $array[$i];
    my $j = $i - 1;
    while ($j >= 0 && $array[$j] > $value) {
      $array[$j + 1] = $array[$j];
      $j--;
    }
    $array[$j + 1] = $value;
  }

  return @array;
}

1;
