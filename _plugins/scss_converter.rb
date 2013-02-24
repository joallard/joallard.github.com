require 'sass'
require 'compass'

module Jekyll
  class ScssConverter < Converter
    safe true
    priority :low

     def matches(ext)
      ext =~ /scss/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      engine = Sass::Engine.new(content, syntax: :scss)
      engine.render
    end
  end
end
