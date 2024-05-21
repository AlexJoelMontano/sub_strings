class WordCount

  def initialize
    @search = Input
    @words = Words
  end

  def substrings
    result = Hash.new(0)
    @search.downcase!
    @words.downcase!

    @search = @search.split(' ')
    @words = @words.split(' ')

    @words.each do |word|
      result[word] += 1 if @search.include?(word)
    end

    return result
  end

  def total
    count = 0

    @words.each do |word|
      count += 1
    end

    return count
  end

end

puts "Enter the dictionary:"
Words = gets.chomp
puts "Enter the words you would like to count:"
Input = gets.chomp

count = WordCount.new

puts "Found these words: #{count.substrings}"
puts "Total words: #{count.total}"
