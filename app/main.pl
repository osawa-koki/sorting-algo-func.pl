
require "display.pl";
require "shuffle.pl";
require "bubble_sort.pl";
require "selection_sort.pl";
require "insertion_sort.pl";
require "merge_sort.pl";
require "quick_sort.pl";
require "heap_sort.pl";
require "shell_sort.pl";

my @array = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9);

Display("Original", @array);

Display("Shuffled", Shuffle(@array));
Display("Bubble Sort", BubbleSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Selection Sort", SelectionSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Insertion Sort", InsertionSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Merge Sort", MergeSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Quick Sort", QuickSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Heap Sort", HeapSort(@array));

Display("Shuffled", Shuffle(@array));
Display("Shell Sort", ShellSort(@array));
