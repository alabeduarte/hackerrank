package algorithms.warmup

object SimpleArraySum {
  def main(args: Array[String]): Unit = {
    println(arrayOfNumbers.sum)
  }

  private def arrayOfNumbers: Seq[Int] = {
    input.reverse.head.split(" ").map(_.toInt)
  }

  private def input = {
    io.Source.stdin.getLines().take(2).toSeq
  }
}
