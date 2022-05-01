module ApplicationHelper
  def full_error_message_on(object, method, css_class = 'invalid-feedback d-block')
    obj = object.class == Symbol ? instance_variable_get("@#{object}") : object
    prepend_text = obj.class.human_attribute_name(method.to_s)
    errors = obj.errors[method.to_sym]
    tag.div("#{prepend_text}#{errors.first}", class: css_class) if errors.is_a?(Array) && !errors.empty?
  end
end
