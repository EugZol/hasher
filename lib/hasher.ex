defmodule Hasher do
  @moduledoc """
  Absolute minimal password hashing library with automatic salt generation
  """

  @salt_length 32

  @doc "Generate password hash (salt will be included in the result string)"
  def salted_password_hash(password) do
    salt = generate_salt()
    hash = generate_hash(password <> salt)

    hash <> "$" <> salt
  end

  @doc "Check password against generated hash"
  def check_password_hash(password, hash) do
    [password_hash, salt] = String.split(hash, "$")

    generate_hash(password <> salt) == password_hash
  end

  defp generate_hash(string) do
    :crypto.hash(:sha256, string) |> Base.encode64
  end

  defp generate_salt do
    :crypto.strong_rand_bytes(@salt_length) |> Base.encode64
  end
end
