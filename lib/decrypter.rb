#  MEMORIZE THE SYNTAX FOR CREATING CLASSES
#
class Decrypter

  attr_accessor :message

  def initialize(message)
    @message = message
  end

  #  RUNS APP IN COMMAND LINE AND ACCEPTS USER INPUT
  #  UNDERSTAND WHAT IT MEANS TO RETURN
  #
  def self.start
    puts "STARTING DECRYPTER V1.22 \n ... \n ... \n"
    until @decrypter
      "ENTER MESSAGE TO DECRYPT: "

      user_input = gets
      encrypted_message = Decrypter.new(gets)
      decrypted_message = encrypted_message.decrypt
      return decrypted_message
  end

  def decrypt

  end

  def self.decrypt_codes
    codes = {}
  end

end




Decrypter.start
