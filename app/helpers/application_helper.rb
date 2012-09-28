module ApplicationHelper

	def custom_field_for(form, object, method, &block)
		output = "#{form.label method} <span>#{object.errors[method].join(', ')}</span>"
		output += capture(&block) if block_given?
		output += "<br /><br />"
		output.html_safe
	end

end
