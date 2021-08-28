defmodule RandomAd.Mixfile do
  use Mix.Project

  def project do
    [app: :random_ad,
     version: "0.9.0",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps(),
     name: "RandomAd",
     source_url: "https://github.com/tehsnappy/random_ad",
     compilers: [:phoenix] ++ Mix.compilers,
     description: description(),
     package: package()]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :decimal, :phoenix]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.0"},
    ]
  end
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]

  defp elixirc_paths(_),     do: ["lib", "web"]

  defp description do
    "Render a randomly chosed file."
  end

  defp package do
    [contributors: ["Steven Fuchs"],
     links: %{"Github" => "https://github.com/tehsnappy/random_ad"}]
  end
end
