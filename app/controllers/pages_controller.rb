class PagesController < ApplicationController

  def index
    @partners = Admin::Partner.all
  end

end
