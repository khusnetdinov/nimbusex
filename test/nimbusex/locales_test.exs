defmodule Nimbusex.LocalesTest do
  use ExUnit.Case, async: true

  import Nimbusex.Locales

  describe "Nimbusex.Locales" do
    test "should render list of links to change locales" do
      conn = %{request_path: ""}

      given = locales(conn, [:us])
      expected = [safe: [60, "a", " href=\"?locale=us\"", 62, [60, "span", " class=\"flag-icon-us flag-icon-background flag-icon\"", 62, "", 60, 47, "span", 62], 60, 47, "a", 62]]

      assert given == expected
    end
  end
end
