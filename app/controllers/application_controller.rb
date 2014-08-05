class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # redirect to admin dashboard after signing in
  def after_sign_in_path_for(user)
    if current_user.is_admin?
      admin_dashboard_path
    else
      root_path
    end
  end

  # redirect back to sign in form when signed out
  def after_sign_out_path_for(user)
    root_path
  end

end
