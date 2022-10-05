# This module is a copy of unsupported gem https://rubygems.org/gems/markerb
# Since Rails 6.0 `erb_handler.call` is accepting 2 arguments (template, source) instead of 1 (template)

require "action_view/template"

module Markerb
  mattr_accessor :processing_options, :renderer
  @@processing_options = {}

  class Markdown
    def self.to_html(compiled_source)
      Markerb.renderer ||= Redcarpet::Render::HTML
      Redcarpet::Markdown.new(Markerb.renderer, Markerb.processing_options).render(compiled_source)
    end
  end

  class Handler
    def erb_handler
      @erb_handler ||= ActionView::Template.registered_template_handler(:erb)
    end

    def call(template, source = nil)
      source ||= template.source
      compiled_source = erb_handler.call(template, source)

      if template.format == :html
        "Markerb::Markdown.to_html(begin;#{compiled_source};end).html_safe"
      else
        compiled_source
      end
    end
  end
end
