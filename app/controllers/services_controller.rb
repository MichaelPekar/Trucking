class ServicesController < ApplicationController
  def index
    @sections = Admin::PageSection.where(lang: params[:locale])
  end

  def show
    @page = Admin::Page.find(params[:id])
  end
end
