defmodule Nimbus.HTML.FaIcons do
  import Phoenix.HTML.Tag

  @moduledoc """
  Module adds helpers for font-awesome icons(http://fontawesome.io/icons/)
  Before useing ensure that you included in app.html styles for countries flags:

    stylesheet("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css")

  For custom styling it use defined class with overloaing styles located after cdn styles;

  Example:

    iex> fa_icon('my_icon')

    <i class="fa fa-my_icon"></i>

  """

  @doc false
  def fa_icon(name) do
    content_tag :i, "", class: "fa fa-#{name}"
  end
end
