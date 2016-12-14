class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :track_action

  protected

  def track_action
    # ahoy.track "Processed #{controller_name}##{action_name}", request.filtered_parameters
    Ahoy.track_visits_immediately = true
    # Ahoy.throttle = false
  end
end
