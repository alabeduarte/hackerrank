package algorithms.implementation

// https://www.hackerrank.com/challenges/divisible-sum-pairs

// In order to submit to hackerrank, rename it to "Solution"
object DivisibleSumPairs {
  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val firstLineOfInput = nextLine(scanner)
    val k = firstLineOfInput.last

    val array = nextLine(scanner)
    val validPairs: Int = discoverValidPairs(k, indexedArrays(array)).size

    println(validPairs)
  }

  def discoverValidPairs(k: Int, indexedArray: Seq[ArrayItem]): Seq[(Int, Int)] = {
    indexedArray.flatMap(currentItem => {
      indexedArray
        .filter(nextItem => nextItem.index > currentItem.index)
        .filter(nextItem => (currentItem.value + nextItem.value) % k == 0)
        .map(nextItem => currentItem.index -> nextItem.index)
    })
  }

  def indexedArrays(array: Seq[Int]): Seq[ArrayItem] = {
    array.indices.map(index => ArrayItem(index, array(index)))
  }

  def nextLine(scanner: java.util.Scanner): Seq[Int] = {
    scanner.nextLine.split(" ").map(_.toInt).toSeq
  }
}

case class ArrayItem(index: Int, value: Int)