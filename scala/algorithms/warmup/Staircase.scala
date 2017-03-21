package algorithms.warmup

// In order to submit to hackerrank, rename it to "Solution"
object Staircase {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val height = scanner.nextLine.toInt
    val staircase = (1 to height).map(floor => (" " * (height - floor)) + ("#" * floor))

    staircase.foreach(floor => println(floor))
  }
}