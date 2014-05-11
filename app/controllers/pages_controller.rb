class PagesController < ApplicationController

  def index
    @partners = Admin::Partner.all
    render layout: 'new_layout'
  end

end
