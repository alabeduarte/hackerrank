package algorithms.warmup

// In order to submit to hackerrank, rename it to "Solution"
object AVeryBigSum {
  def main(args: Array[String]) = {
    println(arrayOfNumbers.sum)
  }

  private def arrayOfNumbers: Seq[Long] = {
    input.reverse.head.split(" ").map(_.toLong)
  }

  private def input = {
    io.Source.stdin.getLines().take(2).toSeq
  }
}
