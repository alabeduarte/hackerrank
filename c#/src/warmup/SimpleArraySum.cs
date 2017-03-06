using System;
using System.Linq;

class Solution {

  static void Main(String[] args)
  {
    // skip the first line
    Console.ReadLine();

    int sum = Console.ReadLine()
      .Split(' ')
      .Select(n => Convert.ToInt32(n))
      .Aggregate((currentNumber, nextNumber) => currentNumber + nextNumber);

    Console.WriteLine(sum);
  }
}
