using System;
using System.Linq;

class Solution {

  private delegate bool Condition(int number);

  private static double GetFractionOf(Condition condition, int[] numbers)
  {
    return (double) numbers.Where(n => condition(n)).Count()/numbers.Length;
  }

  static void Main(String[] args)
  {
    // skip the first line
    Console.ReadLine();

    int[] numbers = Console.ReadLine()
      .Split(' ')
      .Select(n => Convert.ToInt32(n))
      .ToArray();

    Console.WriteLine(GetFractionOf(n => n > 0, numbers));
    Console.WriteLine(GetFractionOf(n => n < 0, numbers));
    Console.WriteLine(GetFractionOf(n => n == 0, numbers));
  }
}
