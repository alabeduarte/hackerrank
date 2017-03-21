package algorithms.warmup

// In order to submit to hackerrank, rename it to "Solution"
object PlusMinus {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val arraySize = scanner.nextLine.toInt

    val numbers = scanner.nextLine.split(" ").map(_.toInt)

    val fractionOfPositiveNumbers = numbers.count(_ > 0).toDouble/arraySize
    val fractionOfNegativeNumbers = numbers.count(_ < 0).toDouble/arraySize
    val fractionOfZeroes = numbers.count(_ == 0).toDouble/arraySize

    println(fractionOfPositiveNumbers)
    println(fractionOfNegativeNumbers)
    println(fractionOfZeroes)
  }
}