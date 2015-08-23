class Student
  def initialize(arrival_time: arrival_time)
    @arrival_time = arrival_time
  end

  def on_time?
    @arrival_time <= 0
  end
end

class AngryProfessor
  def initialize(size, limit)
    @size, @limit = size, limit
  end

  def class_cancelled?(students)
    students.size < @limit
  end
end

test_cases = gets.to_i

test_cases.times do
  size, limit = gets.split(' ').map(&:to_i).zip.flatten

  present_students = gets.split(' ').map do |arrival_time|
    Student.new(arrival_time: arrival_time.to_i)
  end.select { |s| s.on_time? }

  puts AngryProfessor.new(size, limit).class_cancelled?(present_students) ?
    'YES' : 'NO'
end
