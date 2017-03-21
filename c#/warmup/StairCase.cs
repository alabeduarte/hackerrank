using System;
using System.Linq;

class Solution {

  private static string Stringify(string[] array)
  {
    return string.Join("", array);
  }

  static void Main(String[] args)
  {
    int height = Convert.ToInt32(Console.ReadLine());
    string[] stairCase = Enumerable.Range(1, height)
      .Select(floor =>
        {
          return
          Stringify(Enumerable.Range(0, (height - floor))
              .Select(blank => " ")
              .ToArray()) +
          Stringify(Enumerable.Range(0, floor)
              .Select(symbol => "#")
              .ToArray());
        }
      ).ToArray();

    foreach(string floor in stairCase)
    {
      Console.WriteLine(floor);
    }
  }
}
