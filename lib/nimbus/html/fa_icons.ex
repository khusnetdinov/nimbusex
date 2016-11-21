defmodule Nimbus.HTML.FaIcons do
  import Phoenix.HTML.Tag

  @moduledoc """
  Module adds helpers for font-awesome icons(http://fontawesome.io/icons/)
  """

  # TODO: rewrite it to define functions dynamically, based on list of fa icons names
  def icon_upload do
    content_tag :i, "", class: "fa fa-upload"
  end

  def icon_download do
    content_tag :i, "", class: "fa fa-download"
  end
end
