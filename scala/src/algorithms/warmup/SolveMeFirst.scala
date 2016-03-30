package algorithms.warmup

object SolveMeFirst {
  def main(args: Array[String]) {
    println(input.take(2).map(_.toInt).sum)
  }

  private def input: Iterator[String] = {
    io.Source.stdin.getLines()
  }
}
