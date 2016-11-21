defmodule Nimbus.Mixfile do
  use Mix.Project

  def project do
    [app: :nimbus,
     version: "0.3.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end


  defp description do
    """
    Nimbus provide more helpers for Phoenix framework.
    """
  end

  defp package do
    [name: :nimbus,
     maintainers: ["Marat Khusnetdinov"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/khusnetdinov/nimbus"},
     files: ["lib", "test", "mix.exs", "README*", "LICENSE*"]]
  end

  defp deps do
    [{:phoenix_html, "~> 2.7"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
