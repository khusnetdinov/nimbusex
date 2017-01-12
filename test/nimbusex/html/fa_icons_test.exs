defmodule Nimbusex.HTML.FaIconsTest do
  use ExUnit.Case, async: true

  import Nimbusex.HTML.FaIcons

  describe "Nimbusex.HTML.FaIconTest" do
    test "should render i tag with fa icon" do
      given = fa_icon('car')
      expected = {:safe, [60, "i", " class=\"fa fa-car\"", 62, "", 60, 47, "i", 62]}

      assert given == expected
    end
  end
end
