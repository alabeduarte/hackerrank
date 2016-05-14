package algorithms.warmup

// In order to submit to hackerrank, rename it to "Solution"
object SimpleArraySum {
  def main(args: Array[String]) = {
    println(arrayOfNumbers.sum)
  }

  private def arrayOfNumbers: Seq[Int] = {
    input.reverse.head.split(" ").map(_.toInt)
  }

  private def input = {
    io.Source.stdin.getLines().take(2).toSeq
  }
}
