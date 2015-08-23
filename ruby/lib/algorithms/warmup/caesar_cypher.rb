string_length = gets.to_i
string = gets
k = gets.to_i

class Letter
  def initialize(char)
    @char = char
  end

  def next
    return 'a' if @char == 'z'
    return 'A' if @char == 'Z'

    @char.next
  end
end

class CrazyLetter
  def initialize(chars)
    @chars = chars
  end

  def next(char)
    return char unless crazy?(char)

    Letter.new(char).next
  end

  private

  def crazy?(char)
    ('a'..'z').include?(char.downcase)
  end
end

class Encryptor

  def initialize(fixed_number)
    @fixed_number = fixed_number
  end

  def encrypt(string)
    encrypted_string = ''
    crazy_letter = CrazyLetter.new(string.chars)

    string.each_char do |char|
      encrypted_string << find_next_letter(crazy_letter, @fixed_number, char)
    end

    encrypted_string
  end

  def find_next_letter(crazy_letter, fixed_number, letter)
    return letter if fixed_number == 0
    return crazy_letter.next(letter) if fixed_number == 1

    find_next_letter(crazy_letter, fixed_number - 1, crazy_letter.next(letter))
  end
end

puts Encryptor.new(k).encrypt(string)
