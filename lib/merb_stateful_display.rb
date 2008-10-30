module MerbStatefulDisplay
  def _default_state_display_method
    Merb::Plugins.config[:merb_stateful_display][:state_method] || :state
  end

  # Stateful display()
  # Works like display, but checks to see if the object has a 'state'
  # method.  Especially useful in show and edit
  def sdisplay(object, thing = nil, opts = {})
    state_method = opts.delete(:state_method) || _default_state_display_method
    unless object.respond_to?(state_method)
      return display(object, thing, opts)
    end
    begin
      nopts = opts.dup
      nopts[:template] ||= "#{action_name}_#{object.send(state_method)}".to_sym
      display(object, thing, nopts)
    rescue TemplateNotFound
      display(object, thing, opts)
    end
  end
end

# make sure we're running inside Merb
if defined?(Merb::Plugins)

  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:merb_stateful_display] = {
    :state_method => :state
  }
  
  Merb::BootLoader.after_app_loads do
    Application.include(MerbStatefulDisplay)
  end
end
