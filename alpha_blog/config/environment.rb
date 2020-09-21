# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# disable default Rails behavior for input fields which may return errors

ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  html_tag.html_safe
end
