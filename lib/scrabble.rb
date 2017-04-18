class String
  define_method(:scrabble) do
    word = []
    split_word = self.split("").map do |letter|
    scrabble_letters = {
      1 => ["A", "E", "I", "O", "U","L", "N", "R","S","T"],
      2 => ["D","G"],
      3 => ["B","C","M","P"],
      4 => ["F","H","V","W","Y"],
      5 => ["K"],
      8 => ["J","X"],
      10 =>["Q","Z"]
    }
      scrabble_letters.each_pair do |key, value|
        if value.include?(letter)
          word.push(key)
        end
      end
    end
    word.inject(:+)
  end
end
