
sub MergeSort {
  my @array = @_;

  return @array if @array <= 1;

  my $mid = int(@array / 2);
  my @left = MergeSort(@array[0 .. $mid - 1]);
  my @right = MergeSort(@array[$mid .. $#array]);

  my @sorted_array;
  while (@left && @right) {
    if ($left[0] < $right[0]) {
      push @sorted_array, shift @left;
    } else {
      push @sorted_array, shift @right;
    }
  }
  push @sorted_array, @left, @right;

  return @sorted_array;
}

1;
