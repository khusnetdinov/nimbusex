defmodule Nimbusex.HTML.Url do
  @moduledoc """
  Module adds url helper
  """

  @doc """
  Returns current path and additionally adds GET method parameters

  Examples:
    # conn = %{ request_path: "example.com"}

    iex> current_path(conn)
    "example.com"

    iex> current_path(conn, %{sort_by: "resent"})
    "example.com?sort_by=resent"

  """
  def current_path(conn), do: conn.request_path
  def current_path(conn, params) do
    conn.request_path <> "?" <> URI.encode_query(params)
  end
end
