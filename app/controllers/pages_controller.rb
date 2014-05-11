class PagesController < ApplicationController

  def team

  end

  def partners
    @partners = Admin::Partner.all
  end

  def index
    render layout: 'new_layout'
  end

end
