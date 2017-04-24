defmodule Hasher.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hasher,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: "Provides absolutely simple password hashing functions (pure Elixir)",
      source_url: "https://github.com/eugzol/hasher",
      homepage_url: "https://github.com/eugzol/hasher",
      package: package()
    ]
  end

  def application do
    []
  end

  def package do
    [
      licenses: ["WTFPL"],
      maintainers: ["Eugene Zolotarev <eugzol@gmail.com>", "Vadim Venediktov <install.vv@gmail.com>"],
      links: %{"GitHub" => "https://github.com/eugzol/hasher"}
    ]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
