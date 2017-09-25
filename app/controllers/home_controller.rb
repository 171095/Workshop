class HomeController < ApplicationController

  layout 'general'
  
  def index
    @courses = Course.all
  end

end
