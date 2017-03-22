using System;
using System.Linq;
class Solution {

  private static int[][] BuildMatrix(int matrixDimension)
  {
    return Enumerable.Range(0, matrixDimension)
      .Select(_ => Console.ReadLine().Split(' ').Select(n => Convert.ToInt32(n)).ToArray())
      .ToArray();
  }

  private static int SumAcrossThePrimaryDiagonal(int[][] matrix)
  {
    return Enumerable.Range(0, matrix.Length)
      .Select(d => matrix[d][d])
      .Aggregate((curr, next) => curr + next);
  }

  private static int SumAcrossTheSecondaryDiagonal(int[][] matrix)
  {
    return Enumerable.Range(0, matrix.Length)
      .Select(d => matrix[d][(matrix.Length-1) - d])
      .Aggregate((curr, next) => curr + next);
  }

  static void Main(String[] args)
  {
    int matrixDimension = Convert.ToInt32(Console.ReadLine());
    int[][] matrix = BuildMatrix(matrixDimension);

    int diagonalDifference = Math.Abs(
      SumAcrossThePrimaryDiagonal(matrix) - SumAcrossTheSecondaryDiagonal(matrix)
    );

    Console.WriteLine(diagonalDifference);
  }
}
