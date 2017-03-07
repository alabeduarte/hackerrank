using System;

class Solution {

  static void Main(String[] args)
  {
    string time = Console.ReadLine();

    Console.WriteLine(Convert.ToDateTime(time).ToString("HH:mm:ss"));
  }
}
