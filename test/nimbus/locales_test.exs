defmodule Nimbus.LocalesTest do
  use ExUnit.Case, async: true

  import Nimbus.Locales

  describe "Nimbus.Locales" do
    test "should render list of links to change locales" do
      conn = %{request_path: ""}

      given = locales(conn, [:us])
      expected = [safe: [60, "a", " href=\"?locale=us\"", 62, "<span class='flag-icon-us flag-icon-background flag-icon'></span>", 60, 47, "a", 62]]

      assert given == expected
    end
  end
end
