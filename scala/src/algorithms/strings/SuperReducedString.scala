package algorithms.strings

// https://www.hackerrank.com/challenges/reduced-string

// In order to submit to hackerrank, rename it to "Solution"
object SuperReducedString {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val letters = scanner.next
    val solution: String = deletePairOfAdjacentLetters(letters)

    println(solution)
  }

  def deletePairOfAdjacentLetters(letters: String): String = {
    val Regex = """(.)\1"""

    @scala.annotation.tailrec
    def evaluate(letters: Seq[Char], reducedLetters: String): String = letters match {
      case Seq() =>
        reducedLetters

      case Seq(prev, curr, tail @ _ *) =>
        if (prev == curr) {
          evaluate(tail, replaceAll(Regex, reducedLetters))
        } else {
          evaluate(curr +: tail, replaceAll(Regex, reducedLetters :+ prev))
        }

      case curr +: Seq() =>
        evaluate(Seq.empty, replaceAll(Regex, reducedLetters :+ curr))
    }

    val reducedLetters = evaluate(letters.toCharArray, "")

    if (reducedLetters.isEmpty) "Empty String" else reducedLetters
  }

  def replaceAll(Regex: String, reducedLetters: String): String = {
    reducedLetters.replaceAll(Regex, "")
  }
}