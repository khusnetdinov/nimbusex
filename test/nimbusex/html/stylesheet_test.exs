defmodule Nimbusex.HTML.StylesheetTest do
  use ExUnit.Case, async: true

  import Nimbusex.HTML.Stylesheet

  describe "Nimbusex.HTML.Stylessheet" do
    test "should render stylesheet tag" do
      given = stylesheet("app.css")
      expected = {:safe, "<link href=\"app.css\" media=\"screen\" media=\"screen\" rel=\"stylesheet\">"}

      assert given == expected
    end

    test "should change media type" do
      given = stylesheet("app.css", media: "all")
      expected = {:safe, "<link href=\"app.css\" media=\"all\" media=\"all\" rel=\"stylesheet\">"}

      assert given == expected
    end
  end
end
