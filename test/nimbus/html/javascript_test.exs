defmodule Nimbus.HTML.JavascriptTest do
  use ExUnit.Case, async: true

  alias Nimbus.HTML.Javascript

  describe "Nimbus.HTML.JavaScript" do
    test "should render javascript tag" do
      given = Javascript.javascript("app.js")
      expected = {:safe, "<script src=\"app.js\" type=\"text/javascript\">"}

      assert given == expected
    end

    test "should change id" do
      given = Javascript.javascript("app.js", id: "id")
      expected = {:safe, "<script id=\"id\" src=\"app.js\" type=\"text/javascript\">"}

      assert given == expected
    end
  end
end
