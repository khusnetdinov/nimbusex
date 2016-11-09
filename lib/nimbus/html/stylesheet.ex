defmodule Nimbus.HTML.Stylesheet do
  use Phoenix.HTML

  @moduledoc false

  @doc """
  Render a stylesheet link tag. By default it accepts styles href and options.
  You can modify the attributes by passing a list as the last argument.
  The ‘media’ attribute will always be present and defaults to “screen”,
  so you must explicitly set it to “other”.

  Source href can be url or static_path to you stylesheets source.

  Examples:

    iex> stylesheet("app.css")
    "<link rel="stylesheets" media="screen" href="app.css"/>"

    iex> stylesheet("app.css", media: "all")
    "<link rel="stylesheets" media="all" href="app.css"/>"

    iex> stylesheet("http://path.to.source/app.css", media: "all")
    "<link rel="stylesheets" media="all" href="http://path.to.source/app.css"/>"

    iex> stylesheet(static_path(@conn, "/css/app.css"), medial: "all")
    "<link rel="stylesheets" media="all" href="/css/app.css"/>"

  """
  def stylesheet(href) do
    stylesheet(href, [media: "screen"])
  end

  @doc false
  def stylesheet(href, opts) do
    media = Keyword.get(opts, :media, "screen")
    tag(:link, [rel: "stylesheet", href: href, media: media] ++ opts)
  end
end
