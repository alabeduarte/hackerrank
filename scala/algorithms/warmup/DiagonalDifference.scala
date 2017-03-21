package algorithms.warmup

// In order to submit to hackerrank, rename it to "Solution"
object DiagonalDifference {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val dimension = scanner.nextLine.toInt
    val matrixValuesFromInput = (0 until dimension).map(d => scanner.nextLine.split(" ").map(_.toInt))

    val matrix = Matrix(dimension, matrixValuesFromInput)
    val diagonalDifference = (matrix.sumAcrossThePrimaryDiagonal - matrix.sumAcrossTheSecondaryDiagonal).abs

    println(diagonalDifference)
  }
}

case class Matrix(dimension: Int, multiDimensionArray: Seq[Array[Int]]) {
  def sumAcrossThePrimaryDiagonal: Int = {
    (0 until dimension).map(d => multiDimensionArray(d)(d)).sum
  }

  def sumAcrossTheSecondaryDiagonal: Int = {
    (0 until dimension).map(d => multiDimensionArray((dimension - 1) -  d)(d)).sum
  }
}