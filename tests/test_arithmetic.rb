require 'test/unit'
require File.join(File.dirname(__FILE__),'../lib/rmathemata')

class TestArithmetic < Test::Unit::TestCase
  
  def test_product_of_expression_with_a_list_values
    assert_equal 72, ∏x("x + 1", "x", [2, 3, 5])
  end
  
  def test_product_of_expression_with_a_list_values
    assert_equal 13, ∑x("x + 1", "x", [2, 3, 5])
  end
  
  def test_gcd_of_n_integers
    assert_equal 6, 60.gcdn([54, 24])
  end
  
  def test_1_is_a_powerful_number
    assert 1.is_powerful?
  end
  
  def test_2_is_not_a_powerful_integer
    assert !2.is_powerful?
  end
  
  def test_480_is_not_powerful_integer
    assert !480.is_powerful?
  end
  
  def test_1_is_a_perfect_power
    assert 9.is_perfect_power?
  end
  
  def test_9_is_a_perfect_power
    assert 9.is_perfect_power?
  end
  
  def test_10_is_not_a_perfect_power
    assert !10.is_perfect_power?
  end
  
  def test_216_is_a_perfect_power
    assert 216.is_perfect_power?
  end
  
  def test_864_is_Achilles_number
    assert 864.is_achilles_number?
  end
  
  def test_1800_is_Achilles_number
    assert 1800.is_achilles_number?
  end
  
  def test_784_is_not_achilles_number
    assert !784.is_achilles_number?
  end
  
  def test_647_is_not_achilles_number
    assert !647.is_achilles_number?
  end
  
  def test_euler_totient_of_1_is_1
    assert_equal 1, 1.euler_totient
  end
  
  def test_euler_totient_of_864_is_288
    assert_equal 288, 864.euler_totient
  end
  
  def test_euler_totient_of_2310_is_480
    assert_equal 480, 2310.euler_totient
  end
  
  def test_euler_totient_of_30030_is_5760
    assert_equal 5760, 30030.euler_totient
  end
  
  def test_864_is_strong_achilles_number
    assert 864.is_strong_achilles_number?
  end
  
  def test_1800_is_not_strong_achilles_number
    assert !1800.is_strong_achilles_number?
  end
  
  def test_number_of_strong_achilles_numbers_below_10E4_is_7
    assert_equal 7, (10**4).numbers_of_strong_achilles_numbers_below
  end
  
  def xtest_number_of_strong_achilles_numbers_below_10E8_is_656
    assert_equal 656, (10**8).numbers_of_strong_achilles_numbers_below
  end
  
  def test_power_of_2
    assert 2.power_of_2?
    assert !0.power_of_2?
    assert !3.power_of_2?
    assert 1024.power_of_2?
    assert 64.power_of_2?
  end
  
end