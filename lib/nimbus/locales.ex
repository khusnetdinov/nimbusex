defmodule Nimbus.Locales do
  use Phoenix.HTML

  import Nimbus.HTML.Url

  @moduledoc """
  Module adds helpers for swithing locales in templates.
  For display flags it uses https://github.com/lipis/flag-icon-css from CDN.
  Before useing ensure that you included in app.html styles for countries flags:

    stylesheet("https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/2.7.0/css/flag-icon.css")

  For custom styling it use defined class with overloaing styles located after cdn styles;

  Example:

    iex> locales(@conn, [:us, ru])

    <a href="/?locale=us">
      <span class="flag-icon-us flag-icon-background flag-icon"></span>
    </a>
    <a href="/?locale=ru">
      <span class="flag-icon-ru flag-icon-background flag-icon"></span>
    </a>

  It renders list of links without wrapper for customization purpose.

  """

  @doc false
  def locales(conn, opts) do
    for locale <- opts do
      link(to: current_path(conn, locale: locale)) do
        raw "<span class='flag-icon-#{locale} flag-icon-background flag-icon'></span>"
      end
    end
  end
end
