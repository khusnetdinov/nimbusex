defmodule Nimbus.HTML.FaIcons do
  import Phoenix.HTML.Tag

  @moduledoc """
  Module adds helpers for font-awesome icons(http://fontawesome.io/icons/)
  """

  def fa_icon(name) do
    content_tag :i, "", class: "fa fa-#{name}"
  end
end
