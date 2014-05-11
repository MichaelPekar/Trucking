class PagesController < ApplicationController

  def team

  end

  def index
    @partners = Admin::Partner.all
    render layout: 'new_layout'
  end

end
