class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

    # def after_sign_in_path_for(resource)
    #   if resource.student?
    #     '/dashboard'
    #   elsif resource.admin?
    #     '/admin-dashboard'
    #   else
    #     root_path
    #   end        
    # end

end
