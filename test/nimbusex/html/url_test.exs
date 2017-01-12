defmodule Nimbusex.HTML.UrlTest do
  use ExUnit.Case, async: true

  import Nimbusex.HTML.Url

  describe "Nimbusex.HTML.Url" do
    test "should render current_path" do
      conn = %{:request_path => "example.com"}

      given = current_path(conn)
      expected = conn.request_path

      assert given == expected
    end

    test "should render with params" do
      conn = %{:request_path => "example.com"}
      params = %{sort_by: "all"}

      given = current_path(conn, params)
      expected = conn.request_path <> "?" <> "sort_by=all"

      assert given == expected
    end
  end
end
