def caesar_cipher(message, shift_key)
  lowercase_text = message.downcase
  alphabet_range = ('a'..'z').to_a
  ciphertext = ''
  lowercase_text.each_char do |char|
    if alphabet_range.include?(char)
      position = alphabet_range.index(char)

      new_position = (position + shift_key) % 26
      ciphertext += alphabet_range[new_position]
    else
      ciphertext += char
    end
  end
  ciphertext
end

puts 'Please enter the message you want to encrypt: '
plaintext = gets.chomp

puts 'Enter the encryption key:'
encryption_key = gets.chomp.to_i

puts caesar_cipher(plaintext, encryption_key)