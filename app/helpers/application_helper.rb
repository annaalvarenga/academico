module ApplicationHelper
  def show_flash_msgs
    msgs = ''
    msgs += show_msg_type('notice', 'alert-success')
    msgs += show_msg_type('alert', 'alert-danger')
    msgs.html_safe
  end

  def errors_of(object, attrs_to_ignore = [], custom_title = 'Não foi possível salvar devido aos seguintes erros:')
    attrs_to_ignore.each { |attr_to_ignore| object.errors.delete(attr_to_ignore) }

    errors_markup = ''
    if object.errors.any?
      errors_markup += '<div class="default-margin-b text-danger">'
      errors_markup += "<p><b>#{custom_title}</b></p>"
      errors_markup += '<ul>'
      object.errors.full_messages.each do |msg|
        errors_markup += "<li>#{msg}</li>"
      end
      errors_markup += '</ul></div>'
    end

    errors_markup.html_safe
  end

  private

  def show_msg_type(type, css_classes)
    css_classes ||= ''
    css_classes += ' alert'
    msg = ''
    unless flash[type].blank?
      msg += "<div class='#{css_classes}' role='alert'>"
      msg += "<p>#{flash[type]}</p>"
      msg += "</div>"
    end
    msg
  end
end
