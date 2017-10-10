class ChaptersController < ApplicationController
  layout 'general'
  def show
    @chapter = Chapter.friendly.find(params[:id])
  end
  def chapter_params
    params.require(:chapter).permit(:name, :details, :course_module_id, :slug)
  end
end
