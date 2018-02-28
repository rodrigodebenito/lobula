class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Redirect to missing or error routes
  rescue_from ActionController::RoutingError, :with => :render_not_found
  rescue_from StandardError, :with => :render_server_error

  protected
    def render_not_found
      render "public/404", :status => 404, :layout => "error"
    end

    def render_server_error
      render "public/500", :status => 500, :layout => "error"
    end

end
