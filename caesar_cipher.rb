def caesar_cipher(message, num) 
    new_message = message.split('')
    final_message = []
    new_message.map do |x|
        x = x.ord.to_i
        x += num
        letter = x.chr
        final_message.push(letter)
    end
    final_message = final_message.join('')
    p final_message
end

message = "Hello"
caesar_cipher(message, 1)
