include ApplicationHelper
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access Denied !!!"
    redirect_to root_url
  end

  def set_locale
    I18n.locale = params[:locale] || locale_by_ip
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end

  private

  def locale_by_ip
    locale = I18nData.country_code(request.location.country)
    locale = locale.downcase if locale
    locale = I18n.default_locale unless application_languages.map{ |l| l[:value] }.include?(locale)
    locale
  end

end
