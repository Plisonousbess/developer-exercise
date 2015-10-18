class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
    str_array = str.scan(/[\w'-]+|[.,!?]+/)
    new_array = []
    str_array.each do |word|
      if word.length > 4 && word[0] =~ /[a-z]/
        new_array << "marklar"
      elsif word.length > 4 && word[0] =~ /[A-Z]/
        new_array << "Marklar"
      else
        new_array << word
      end
    end

    spaced_string = new_array.join(" ")
    #refactor: automate this so it works for other punctuation:
    spaced_string.gsub!(" .", ".")
    spaced_string.gsub!(' ?', '?')
    spaced_string

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.fibonacci(n)
    sequence = [1, 1]
    (n-2).times do
      sequence << sequence[-2] + sequence[-1]
    end
    sequence
  end

  def self.even_fibonacci(nth)
    sequence = self.fibonacci(nth)
    even_array = []
    sequence.each do |number|
      even_array << number if number % 2 == 0
    end
    sum = even_array.inject { |sum, number| sum + number }
    sum
  end

end
