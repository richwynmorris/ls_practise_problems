def remove_vowels(arr)
	puts arr.map { |word| word.gsub(/[AEIOUaeiou]/, '')}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))