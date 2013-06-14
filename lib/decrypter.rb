#  MEMORIZE THE SYNTAX FOR CREATING CLASSES
class Decrypter

  attr_accessor :message

  CODES = { 'A' => 'Z', 'B' => 'Y', 'C' => 'X'}

  def initialize(message)
    @message = message
  end

  #  WRAPPER THAT RUNS APP IN COMMAND LINE AND ACCEPTS USER INPUT
  #  UNDERSTAND WHAT IT MEANS TO RETURN
  #  BE ABLE TO USE LOCAL VARIABLES
  #  BE ABLE TO CREATE AND CALL CLASS AND INSTANCE METHODS
  #  BE ABLE TO USE LOOP
  def self.start
    puts "STARTING DECRYPTER V1.22 \n ... \n ... \n"
    puts "ENTER MESSAGE TO DECRYPT: "
    loop do
      user_input = gets
      if user_input.upcase == "EXIT"
        break
      else
        encrypted_message = Decrypter.new(user_input).chomp!
        decrypted_message = encrypted_message.upcase.decrypt
        return decrypted_message
      end
    end
  end

  #  MEMORIZE THE STEPS FOR CREATING ALGORITHMS
  #  BE ABLE TO USE EACH
  def decrypt
    decrypted = ""
    self.each_char do |char|
      new_char = CODES[char].value
      decrypted += new_char
    end
    return decrypted
  end
end


Decrypter.start
