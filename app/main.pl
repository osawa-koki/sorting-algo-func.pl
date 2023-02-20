
my @array = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9);

sub display_array {
  my ($title, @array) = @_;
  printf("%-20s : %s\n", $title, join(" ", @array));
}

display_array("Original", @array);
