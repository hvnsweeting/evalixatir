# Evalixatir

[![CircleCI](https://circleci.com/gh/hvnsweeting/evalixator.svg?style=svg)](https://circleci.com/gh/hvnsweeting/evalixator)

Elixir validator.

```
Elixir + Validator -> Evalixatir
```

Somewhat inspired by [govalidator](https://github.com/asaskevich/govalidator)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `evalixatir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:evalixatir, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/evalixatir](https://hexdocs.pm/evalixatir).

## Usage

Validating MAC address:

```elixir
iex> Evalixatir.mac?("34:e6:d7:12:b7:9a")
true
iex> Evalixatir.mac?("34:e6:d7:12:b7:9ab")
false
iex> Evalixatir.mac?("34:e6:d7:12:b7")
false
iex> Evalixatir.mac?("gh:12:11:11:11:11")
false
iex> Evalixatir.mac?("ff:12:11:11:11:11")
true
```
