defmodule Nimbus.HTML.StylesheetTest do
  use ExUnit.Case, async: true

  alias Nimbus.HTML.Stylesheet

  describe "Nimbus.HTML.Stylessheet" do
    test "should render stylesheet tag" do
      given = Stylesheet.stylesheet("app.css")
      expected = {:safe, "<link href=\"app.css\" media=\"screen\" media=\"screen\" rel=\"stylesheet\">"}

      assert given == expected
    end

    test "should change media type" do
      given = Stylesheet.stylesheet("app.css", media: "all")
      expected = {:safe, "<link href=\"app.css\" media=\"all\" media=\"all\" rel=\"stylesheet\">"}

      assert given == expected
    end
  end
end
