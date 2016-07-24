package algorithms.strings

// https://www.hackerrank.com/challenges/reduced-string

// In order to submit to hackerrank, rename it to "Solution"
object SuperReducedString {
  val Regex = """(.)\1"""

  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val letters = scanner.next
    val solution: String = deletePairOfAdjacentLetters(letters)

    println(solution)
  }

  def deletePairOfAdjacentLetters(letters: String): String = {
    @scala.annotation.tailrec
    def evaluate(letters: Seq[Char], reducedLetters: String): String = letters match {
      case Seq() =>
        reducedLetters

      case Seq(prev, curr, tail @ _ *) =>
        if (prev == curr) {
          evaluate(tail, replaceAll(reducedLetters))
        } else {
          evaluate(curr +: tail, replaceAll(reducedLetters :+ prev))
        }

      case curr +: Seq() =>
        evaluate(Seq.empty, replaceAll(reducedLetters :+ curr))
    }

    val reducedLetters = evaluate(letters.toCharArray, "")

    if (reducedLetters.isEmpty) "Empty String" else reducedLetters
  }

  def replaceAll(reducedLetters: String): String = {
    reducedLetters.replaceAll(Regex, "")
  }
}