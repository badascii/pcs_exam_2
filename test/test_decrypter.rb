#  GOALS:
#  TEST-DRIVEN DEVELOPMENT
#  UNDERSTAND BOOLEAN EVALUATION
#  MEMORIZE THE STEPS FOR TROUBLESHOOTING

require 'minitest/autorun'
require_relative '../lib/decrypter.rb'

class DecrypterTest < MiniTest::Unit::TestCase


  def setup
    @decrypter = Decrypter.new("G")
  end

  def test_start

  end

  def test_class_of_instance
    assert_equal true, @decrypter.class == Decrypter
  end

  def test_if_decrypt_codes_exists
    assert_equal true, Decrypter.methods.include?(:decrypt_codes)
  end

  def test_decrypt_codes
    skip
    assert_equal false, Decrypter.decrypt_codes.nil?
  end

end