class ChaptersController < ApplicationController
  layout 'general'
  def show
    @chapter = Chapter.find(params[:id])
  end

end
