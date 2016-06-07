package algorithms.implementation

// https://www.hackerrank.com/challenges/angry-professor

// In order to submit to hackerrank, rename it to "Solution"
object AngryProfessor {

  def main(args: Array[String]) = {
    val scanner = new java.util.Scanner(System.in)

    val testCases = scanner.nextLine.toInt

    val professorDecisions = (0 until testCases).map(_ => gatherInput(scanner))

    professorDecisions.map(_.isClassCanceled).map({
      case true => "YES"
      case false => "NO"
    }).foreach(println)
  }

  private def gatherInput(scanner: java.util.Scanner): ProfessorCriteria = {
    val studentsAndThreshold = nextLineOfIntegers(scanner)
    val arrivalTimesForEachStudent = nextLineOfIntegers(scanner)

    ProfessorCriteria(
      StudentsByThreshold(studentsAndThreshold.head, studentsAndThreshold.last),
      arrivalTimesForEachStudent
    )
  }

  private def nextLineOfIntegers(scanner: java.util.Scanner): Seq[Int] = scanner.nextLine.split(" ").map(_.toInt).toSeq
}

case class StudentsByThreshold(students: Int, threshold: Int)

case class ProfessorCriteria(studentsByThreshold: StudentsByThreshold, arrivalTimesForEachStudent: Seq[Int]) {
  def isClassCanceled: Boolean = arrivalTimesForEachStudent.count(_ <= 0) < studentsByThreshold.threshold
}