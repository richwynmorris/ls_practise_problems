# def palindrome?(str)
#   str == str.chars.reverse.join
# end

# # p palindrome?('madam')
# # p palindrome?('Madam')
# # p palindrome?("madam i'm adam")
# # p palindrome?('356653')


def remove_uniq_items(str)
  letters = ('a'..'z').to_a
  caps = ('A'..'Z')
  nums = (1..9).to_a
  space = [' ']


  arr = str.chars

  arr.select! do |letter|
    letters.include?(letter) || caps.include?(letter) || nums.include?(letter) || space.include?(letter)
  end

  p arr.join
end

remove_uniq_items("Hi there, my name's Richard.")

