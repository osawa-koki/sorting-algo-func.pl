
sub HeapSort {
  my @array = @_;

  # ヒープ構造を作成する
  for my $i (1 .. $#array) {
    my $child = $i;
    while ($child > 0) {
      my $parent = int(($child - 1) / 2);
      last if $array[$child] <= $array[$parent];
      ($array[$child], $array[$parent]) = ($array[$parent], $array[$child]);
      $child = $parent;
    }
  }

  # ヒープ構造から要素を取り出してソートする
  for my $i (reverse 1 .. $#array) {
    ($array[0], $array[$i]) = ($array[$i], $array[0]);

    my $parent = 0;
    while (1) {
      my $child = $parent * 2 + 1;
      last if $child > $i - 1;

      if ($child + 1 <= $i - 1 && $array[$child] < $array[$child + 1]) {
        $child++;
      }
      last if $array[$parent] >= $array[$child];
      ($array[$parent], $array[$child]) = ($array[$child], $array[$parent]);
      $parent = $child;
    }
  }

  return @array;
}

1;
