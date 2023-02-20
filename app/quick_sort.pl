
sub QuickSort {
  my @array = @_;

  return @array if @array <= 1;

  my $pivot = shift @array;
  my @left;
  my @right;

  foreach my $element (@array) {
    if ($element <= $pivot) {
      push @left, $element;
    } else {
      push @right, $element;
    }
  }

  return (QuickSort(@left), $pivot, QuickSort(@right));
}

1;
