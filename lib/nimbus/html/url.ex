defmodule Nimbus.HTML.Url do
  @moduledoc """
  Module adds url helper
  """

  @doc """
  Returns current path and additionally adds GET method parameters
  """

  def current_path(conn, params \\ %{}), do: conn.request_path
  def current_path(conn, params) when params == %{} do
    conn.request_path <> "?" <> URI.encode_query(params)
  end
end
