# Nimbusex

![img](http://res.cloudinary.com/dtoqqxqjv/image/upload/v1489144586/github/dubious_dolls_9_v5y9dz.jpg)

Additional helpers for [Phoenix](https://github.com/phoenixframework/phoenix) what were not included in Phoenix by different reasons.

## Installation
Add `nimbusex` to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:nimbusex, "~> 0.4.0"}]
  end
  ```

## Usage

Add desired collection of helpers to your `web/web.ex`, e.g. collection of `:view` helpers:

```elixir
  def view do
    quote do
      use Phoenix.View, root: "web/templates"
      use Nimbusex.HTML, :view
      use Nimbusex.HTML, :other_html_helpers_import
    end
  end
```

To get full list of possible collections, check out [docs](https://hexdocs.pm/nimbusex/Nimbusex.HTML.html#content)

## Documentation

  [Read hexdocs.pm](https://hexdocs.pm/nimbusex/api-reference.html)
  
## Contribution

Clone repo, implement additional helpers, write tests and PR welcome!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
