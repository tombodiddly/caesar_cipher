def is_alpha?(num)
    num.between?(65,90) or num.between?(97,122)
end

def caesar_cipher(input, key)
    input_arr = input.split("")
    new_array = []
    input_arr.map do |letter|
        new_array.push(32.chr) if letter.ord == 32
        next letter if is_alpha?(letter.ord) == false
        if letter.ord.between?(65,90) == true && letter.ord + key > 90
            new_array.push((((letter.ord + key) - 90) + 64).chr)
        elsif letter.ord.between?(97,122) == true && letter.ord + key > 122
            new_array.push((((letter.ord + key) - 122) + 96).chr)
        else
            new_array.push((letter.ord + key).chr)
        end
    end
p new_array.join("")
end

print "Enter your secret message..."
input = gets.chomp

print "Enter your encryption value..."
key = gets.chomp.to_i

caesar_cipher(input, key)