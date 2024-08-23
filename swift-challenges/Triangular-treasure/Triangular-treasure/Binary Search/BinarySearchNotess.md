#  BINARY SEARCH ALGORITHM 

It's input is a sorted list of elements.

If an element you're looking for is in that list, binary search returns the position where it's located.

Otherwise binary search returns `nil`

// Binary Search
//let phonebook = [“Amiri”, “Beka”, “Catherine”, “Juma”, “Katana”, “Shangazi”, “Linus”] // serach for k
// list needs to be sorted
//let wordsInDictionary = [240k]
//simple search: 240k steps
//Binary search
//[240k] items -> 120k -> 60k -> 30k -> 15k -> 7.5k -> 3750 ->
// 1875 -> 938 -> 469 -> 235 -> 118 -> 59 -> 30 -> 15 -> 8 -> 4 -> 2 -> 1
// i.e 18 steps with binary search

// CONCLUSION
// a list of n,
// binary search will take `log2 n` steps to run
// simple search will take `n` steps to run

// Refresher: Algorithms
//logBase10 100 = x i.e 10* y = 100. Find y. 10y = 100. .: y = 10

// Exercise:
// Express the follwing numbers to logs.
//1. 2^3 = 8
//2. 2^4 = 16
//3. 2^5 = 32

// Answers:
//1. logBase2 8 = 3
//2. logBase2 16 = 4
//3. logBase2 32 = 5
//Trick: Logs are the flip of expontenials

