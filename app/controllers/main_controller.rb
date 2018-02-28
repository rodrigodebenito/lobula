class MainController < ApplicationController
  def index
    main_page()
  end

  def project_page
    @project = Project.where(slug: params[:id], active: true).first
    unless @project.nil?
      @pictures = Picture.order("weight DESC", "created_at ASC").where(project_id: @project.id, active: true)
      main_page()
      return;
    else
      render_not_found()
    end
  end

  private
    def main_page
      @person = Person.first()
      @projects = Project.where(active: true).order("date DESC")
      render "main/index"
    end
end
