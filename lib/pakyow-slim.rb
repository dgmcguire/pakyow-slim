require 'slim'

require 'version'

Slim::Engine.set_options(
  shortcut: {
    '@@' => { tag: 'div', attr: 'data-scope' },
    '@'  => { tag: 'div', attr: 'data-prop' },
    '#'  => { tag: 'div', attr: 'id' },
    '.'  => { tag: 'div', attr: 'class' }
  }
)

Pakyow::App.processor :slim do |content|
  Slim::Template.new { @data = content }.render
end
