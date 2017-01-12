defmodule Nimbusex.HTML do
  @moduledoc """
  Nimbusex.HTML provide additional helpers methods for using in templates.

  It depends on:

    * `Phoenix.HTML` - Phoenix helpers for working with HTML and templates;

  """

  @doc """
  Imports helpers for defining assets files.

  It imports:

    *  `Nimbusex.HTML.Javascript` - Javascript assets helper;

    *  `Nimbusex.HTML.Stylesteet` - Stylesheet assets helper;

  """
  def layout do
    quote do
      import Nimbusex.HTML.Javascript
      import Nimbusex.HTML.Stylesheet
    end
  end

  @doc """
  Imports helpers for using in common templates.

  It imports:

    *  `Nimbusex.HTML.Image` - Image helper;

    *  `Nimbusex.HTML.Url` - Url helpers

    *  `Nimbusex.HTML.FaIcons` - Helpers for Font-Awesome Icons

  """
  def view do
    quote do
      import Nimbusex.HTML.Image
      import Nimbusex.HTML.Url
      import Nimbusex.HTML.FaIcons
    end
  end

  @doc """
  Imports all available modules.
  """
  def all do
    quote do
      import Nimbusex.HTML.Javascript
      import Nimbusex.HTML.Stylesheet
      import Nimbusex.HTML.Image
      import Nimbusex.HTML.Url
      import Nimbusex.HTML.FaIcons
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
