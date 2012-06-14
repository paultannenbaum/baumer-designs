class StaticPagesController < ApplicationController
  
  def home
    render :layout => "minimal"
  end

  def resume
    render :layout => "minimal_bootstrap"
  end

end
