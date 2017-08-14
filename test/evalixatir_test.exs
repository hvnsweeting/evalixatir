defmodule EvalixatirTest do
  use ExUnit.Case
  doctest Evalixatir

  test "valid 1 digit integer" do
    assert Evalixatir.integer?("0") == true
  end

  test "valid 3 digits integer" do
    assert Evalixatir.integer?("123") == true
  end

  test "valid negative integer" do
    assert Evalixatir.integer?("-123") == true
  end

  test "valid positive integer with plus sign" do
    assert Evalixatir.integer?("+123") == true
  end

  test "valid integer with prefix Zero" do
    assert Evalixatir.integer?("023") == true
  end

  test "Invalid integer" do
    assert Evalixatir.integer?("12a3") == false
  end

  test "valid MAC addr  34:e6:d7:16:a7:1d" do
    assert Evalixatir.mac?("34:e6:d7:16:a7:1d") == true
  end

  test "valid MAC addr 90:4c:e5:69:e8:e0" do
    assert Evalixatir.mac?("90:4c:e5:69:e8:e0") == true
  end

  test "invalid MAC addr 90:4c:e5:69:e8:e09  e09" do
    assert Evalixatir.mac?("90:4c:e5:69:e8:e09") == false
  end

  test "Invalid nonhex MAC 34:e6:d7:16:a7:1k  1k" do
    assert Evalixatir.mac?("34:e6:d7:16:a7:1k") == false
  end

  test "pik4chu is a good username" do
    assert Evalixatir.username?("pik4chu") == true
  end

  test "pig is not a good username" do
    assert Evalixatir.username?("pig") == false
  end

  test "learnyouagoodelixirisalsosoverbose is too verbose username" do
    assert Evalixatir.username?("learnyouagoodelixirisalsosoverbose") == false
  end
end
