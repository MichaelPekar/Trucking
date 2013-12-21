class Admin::AdminController < ApplicationController
  layout 'admin'

  before_filter :authorize_admin

  private

  def authorize_admin
    authorize! :view_admin_pages, 'admin'
  end
end
