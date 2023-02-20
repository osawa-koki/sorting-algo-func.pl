
sub CountingSort {
  my @array = @_;

  my $max_value = 0;
  for my $element (@array) {
    $max_value = $element if $element > $max_value;
  }

  my @count = (0) x ($max_value + 1);
  for my $element (@array) {
    $count[$element]++;
  }

  my @sorted_array;
  for my $i (0 .. $max_value) {
    while ($count[$i] > 0) {
      push @sorted_array, $i;
      $count[$i]--;
    }
  }

  return @sorted_array;
}

1;
