package algorithms.warmup

object AVeryBigSum {
  def main(args: Array[String]): Unit = {
    println(arrayOfNumbers.sum)
  }

  private def arrayOfNumbers: Seq[Long] = {
    input.reverse.head.split(" ").map(_.toLong)
  }

  private def input = {
    io.Source.stdin.getLines().take(2).toSeq
  }
}
