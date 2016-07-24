package algorithms.search

// https://www.hackerrank.com/challenges/missing-numbers

// In order to submit to hackerrank, rename it to "Solution"
object MissingNumbers {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val firstListSize = scanner.nextLine
    val firstList = scanner.nextLine.split(" ").map(_.toInt).toSeq

    val secondListSize = scanner.nextLine
    val secondList = scanner.nextLine.split(" ").map(_.toInt).toSeq

    val missingNumbers = findMissingNumbers(firstList, secondList)
    println(missingNumbers)
  }

  def findMissingNumbers(firstList: Seq[Int], secondList: Seq[Int]) = {
    @scala.annotation.tailrec
    def evaluate(distinctNumbersFromFirstList: Seq[Int], missingNumbers: Seq[Int]): Seq[Int] = distinctNumbersFromFirstList match {
      case Seq() => missingNumbers
      case head +: tail =>
        val firstListFrequency: Int = firstList.count(_ == head)
        val secondListFrequency: Int = secondList.count(_ == head)

        if (firstListFrequency == secondListFrequency) {
          evaluate(tail, missingNumbers)
        } else {
          evaluate(tail, missingNumbers :+ head)
        }
    }

    val distinctNumbersFromFirstList: Seq[Int] = firstList.distinct

    evaluate(distinctNumbersFromFirstList, Seq.empty).sorted.mkString(" ")
  }
}