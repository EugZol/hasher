# Hasher

Absolutely minimal hashing library in pure Elixir.

Passwords will be hashed with one round of sha256 hashing with 32-byte salt automatically generated and added.

## Installation

The package can be installed by adding `hasher` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:hasher, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/hasher](https://hexdocs.pm/hasher).

## Usage

```elixir
# Generate hash
hashed_password = Hasher.salted_password_hash("qwerty")

# Check password against hash
Hasher.check_password_hash("qwerty", hashed_password)
```
