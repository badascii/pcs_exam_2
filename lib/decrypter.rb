#  MEMORIZE THE SYNTAX FOR CREATING CLASSES
class Decrypter

  attr_accessor :message

  CODES = { 'A' => 'Z', 'B' => 'Y', 'C' => 'X', 'D' => 'W', 'E' => 'V',
            'F' => 'U', 'G' => 'T', 'H' => 'S', 'I' => 'R', 'J' => 'Q',
            'K' => 'P', 'L' => 'O' }

  def initialize(message='ABC')
    @message = message
  end

  #  WRAPPER THAT RUNS APP IN COMMAND LINE AND ACCEPTS USER INPUT
  #  UNDERSTAND WHAT IT MEANS TO RETURN
  #  BE ABLE TO USE LOCAL VARIABLES
  #  BE ABLE TO CREATE AND CALL CLASS AND INSTANCE METHODS
  #  BE ABLE TO USE LOOP
  #  MEMORIZE COMMON ITERATORS AND CONDITIONAL STATEMENTS
  def self.start
    puts "STARTING DECRYPTER V1.22 \n ... \n ... \n ... \n"
    puts "ENTER MESSAGE TO DECRYPT: "
    loop do
      user_input = gets.upcase.chomp
      if user_input == "EXIT"
        break
      else
        encrypted_message = Decrypter.new(user_input)
        decrypted_message = encrypted_message.decrypt
        puts decrypted_message
      end
    end
  end

  #  MEMORIZE THE STEPS FOR CREATING ALGORITHMS
  #  UNDERSTAND THE DIFFERENCE BETWEEN A HASH AND AN ARRAY
  #  BE ABLE TO USE EACH
  def decrypt
    @message.each_char do |char|
      if CODES.has_key?(char)
        new_char = CODES[char]
        @message.gsub!(char, new_char)
      else
        @message = "INVALID INPUT"
      end
    end
    return @message
  end

end


Decrypter.start
