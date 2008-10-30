require 'merb_stateful_display/instance_methods'

# make sure we're running inside Merb
if defined?(Merb::Plugins)

  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:merb_stateful_display] = {
    :state_method => :state
  }
  
  Merb::BootLoader.after_app_loads do
    Application.include(MerbStatefulDisplay::InstanceMethods)
  end
end
