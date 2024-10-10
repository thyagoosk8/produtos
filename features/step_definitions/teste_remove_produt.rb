require 'minitest/autorun'

class TestRemoveAfterSymbols < Minitest::Test
  def test_cenario_1
    input = "bananas, tomates # e ventiladores"
    symbols = ["#", "!"]
    expected_output = "bananas, tomates"
    assert_equal expected_output, remove_after_symbols(input, symbols)
  end

  def test_cenario_2
    input = "o rato roeu a roupa $ do rei % de roma"
    symbols = ["%", "!"]
    expected_output = "o rato roeu a roupa $ do rei"
    assert_equal expected_output, remove_after_symbols(input, symbols)
  end

  def test_cenario_3
    input = "the quick brown fox & jumped over * the lazy dog"
    symbols = ["&", "*", "%", "!"]
    expected_output = "the quick brown fox"
    assert_equal expected_output, remove_after_symbols(input, symbols)
  end
end
