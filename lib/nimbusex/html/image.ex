defmodule Nimbusex.HTML.Image do
  use Phoenix.HTML

  @moduledoc """
  Module adds image helper
  """

  @doc """
  Render an image tag. By defaut it accepts src and options.
  You can modify the attributes by passing a list as the last argument.

  Source src can be url or static_path to you javascript source.

  Examples:
    iex> image("image.jpg")
    "<img src="image"/>"

    iex> image("http://path.to.jpg", alt: "image")
    "<img src="http://path.to.jpg" alt="image"/>"

    iex> image("image.jpg", alt: "image", class: "image")
    "<img src="image" alt="image" class="image"/>"

  """
  def image(src) do
     image(src, [])
  end

  @doc false
  def image(src, opts) do
    tag(:img, [src: src] ++ opts)
  end
end
