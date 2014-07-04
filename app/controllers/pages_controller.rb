class PagesController < ApplicationController

  def index
    @partners = Admin::Partner.all
    @sections = Admin::PageSection.where(lang: I18n.locale)
  end

end
