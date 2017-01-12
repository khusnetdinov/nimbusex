defmodule Nimbusex.HTML.JavascriptTest do
  use ExUnit.Case, async: true

  import Nimbusex.HTML.Javascript

  describe "Nimbusex.HTML.JavaScript" do
    test "should render javascript tag" do
      given = javascript("app.js")
      expected = {:safe, [60, "script", " src=\"app.js\" type=\"text/javascript\"", 62, "", 60, 47, "script", 62]}

      assert given == expected
    end

    test "should change id" do
      given = javascript("app.js", id: "id")
      expected = {:safe, [60, "script", " id=\"id\" src=\"app.js\" type=\"text/javascript\"", 62, "", 60, 47, "script", 62]}

      assert given == expected
    end
  end
end
