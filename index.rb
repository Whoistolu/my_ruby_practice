def caesar_cipher(str, shift=1)
  alphabet = ("a"..."z").to_S
  caesar = ""
  #we will loop through each of the strings in order to accomplish the new string and then push it to caesar

  str.each_char do |letter|

    if letter = " "
        caesar += " "
    else
        old_idx = alphabet.find_index(letter)
        new_idx = ( old_idx + shift ) % alphabet.count
        caesar += alphabet[new_idx]
    end
  end
    

  caesar
end