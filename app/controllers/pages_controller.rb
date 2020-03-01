class PagesController < ApplicationController
  def home
    @posts=Blog.all
    @skills=Skill.all
    @p_items=Portfolio.all
  end

  def about
  end

  def contact
  end
end
