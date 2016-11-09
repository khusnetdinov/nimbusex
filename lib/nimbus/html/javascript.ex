defmodule Nimbus.HTML.Javascript do
  use Phoenix.HTML

  @moduledoc false

  @doc """
  Render a script tag. By default it accepts script src and options.
  You can modify the attributes by passing a list as the last argument.

  Source src can be url or static_path to you javascript source.

  Examples:

    iex>  javascript("app.js")
    "<script type="text/javascript" src="app.js"></script>"

    iex>  javascript("http://path.to.example/app.js")
    "<script type="text/javascript" src="http://path.to.example/app.js"></script>"

    iex>  javascript("http://path.to.example/app.js", id: "identifier")
    "<script type="text/javascript" src="http://path.to.example/app.js" id="identifier"></script>"

  """
  def javascript(src) do
    javascript(src, [])
  end

  @doc false
  def javascript(src, opts) do
    tag(:script, [type: "text/javascript", src: src] ++ opts)
  end
end
