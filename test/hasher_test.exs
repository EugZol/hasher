defmodule HasherTest do
  use ExUnit.Case
  doctest Hasher

  describe ".check_password_hash" do
    setup do
      hash = Hasher.salted_password_hash("qwerty")
      {:ok, %{hash: hash}}
    end

    test "returns true if hash is valid", %{hash: hash} do
      assert Hasher.check_password_hash("qwerty", hash)
    end

    test "returns false if hash is invalid", %{hash: hash} do
      assert !Hasher.check_password_hash("1234", hash)
    end
  end
end
