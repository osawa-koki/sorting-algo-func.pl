
require "display.pl";
require "shuffle.pl";
require "bubble_sort.pl";
require "selection_sort.pl";

my @array = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9);

Display("Original", @array);

Display("Shuffled", Shuffle(@array));
Display("Bubble Sort", BubbleSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Selection Sort", SelectionSort(@array));
