defmodule Notsense.Mixfile do
  use Mix.Project

  def project do
    [app: :random_ad,
     version: "0.1.1",
     elixir: "~> 1.0",
     deps: deps,
     name: "RandomAd",
     source_url: "https://github.com/tehsnappy/random_ad",
     test_coverage: [tool: Coverex.Task, coveralls: true],
     description: description,
     package: package]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :decimal]]
  end

  defp deps do
    []
  end

  defp description do
    "Render a randomly chosed file."
  end

  defp package do
    [contributors: ["Steven Fuchs"],
     links: %{"Github" => "https://github.com/tehsnappy/random_ad"}]
  end
end
