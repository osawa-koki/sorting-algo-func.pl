
sub Display {
  my ($title, @array) = @_;
  printf("%-20s : %s\n", $title, join(" ", @array));
}

1;
