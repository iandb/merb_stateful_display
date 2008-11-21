module MerbStatefulDisplay
  module InstanceMethods

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
        template ||= "#{action_name}_#{object.send(state_method)}".to_sym
        display(object, template, nopts)
      rescue Merb::ControllerExceptions::NotAcceptable
        display(object, action_name.to_sym, opts)
      end
    end
  end
 end
