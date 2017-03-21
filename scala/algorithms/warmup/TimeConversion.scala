package algorithms.warmup

// https://www.hackerrank.com/challenges/time-conversion

// In order to submit to hackerrank, rename it to "Solution"
object TimeConversion {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val formatFor12Hours = new java.text.SimpleDateFormat("hh:mm:ssa")
    val formatFor24Hours = new java.text.SimpleDateFormat("HH:mm:ss")

    val parsedDate = formatFor12Hours.parse(scanner.next)

    println(formatFor24Hours.format(parsedDate))
  }
}