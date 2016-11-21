defmodule Nimbus.HTML do
  @moduledoc """
  Nimbus.HTML provide additional helpers methods for using in templates.

  It depends on:

    * `Phoenix.HTML` - Phoenix helpers for working with HTML and templates;

  """

  @doc """
  Imports helpers for defining assets files.

  It imports:

    *  `Nimbus.HTML.Javascript` - Javascript assets helper;

    *  `Nimbus.HTML.Stylesteet` - Stylesheet assets helper;

  """
  def layout do
    quote do
      import Nimbus.HTML.Javascript
      import Nimbus.HTML.Stylesheet
    end
  end

  @doc """
  Imports helpers for using in common templates.

  It imports:

    *  `Nimbus.HTML.Image` - Image helper;

    *  `Nimbus.HTML.Url` - Url helpers

    *  `Nimbus.HTML.FaIcons` - Helpers for Font-Awesome Icons

  """
  def view do
    quote do
      import Nimbus.HTML.Image
      import Nimbus.HTML.Url
      import Nimbus.HTML.FaIcons
    end
  end

  @doc """
  Imports all available modules.
  """
  def all do
    quote do
      import Nimbus.HTML.Javascript
      import Nimbus.HTML.Stylesheet
      import Nimbus.HTML.Image
      import Nimbus.HTML.Url
      import Nimbus.HTML.FaIcons
    end
  end

  @doc """
  Dispatcher for require helper methods.

  Available: `:layout`, `:view`, `:all` .
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  @doc false
  defmacro __using__ do
    apply(__MODULE__, :all, [])
  end
end
