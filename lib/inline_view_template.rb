require "inline_view_template/version"

class InlineViewTemplate

  def initialize(&contents)
    raise ArgumentError.new('missing content block') unless block_given?
    @contents = contents

    # Get the scope of the view in which the template is defined so that
    # ActionView::Helpers::CaptureHelper#capture can later be called from it in
    # order to render the template.
    @view_scope = eval('self', contents.binding)
  end

  def render(*args, &sub_contents)
    # If a content block was specified, create an inline view template out of
    # it to pass through as the last parameter to this inline view template.
    args << self.class.new(&sub_contents) if block_given?

    # Render the inline view template.
    @view_scope.capture(*args, &@contents)
  end

end
