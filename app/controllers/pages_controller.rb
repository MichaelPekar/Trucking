class PagesController < ApplicationController
  def about

  end

  def contact

  end

  def team

  end

  def partners
    @partners = Admin::Partner.all
  end

end
