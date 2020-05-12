class PagesController < ApplicationController
before_action :set_copyright

  def home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end


  def set_copyright
  	@copyright  = ViewTool::Renderer.copyright 'Pepijn van de Vorst', 'alle rechten voorbehouden'
  end
end
