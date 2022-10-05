require_relative "../../lib/markerb"

ActionView::Template.register_template_handler :markerb, Markerb::Handler.new
