class PagesController < ApplicationController

  def index
    @partners = Admin::Partner.all
    @sections = Admin::PageSection.where(lang: params[:locale])
  end

end
