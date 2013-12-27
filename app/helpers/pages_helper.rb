module PagesHelper

  def about_us_page
    page = Admin::AboutUsPage.where(lang: params[:locale]).first
    raw page.content if page
  end

  def contact_us_page
    page = Admin::ContactUsPage.first
    raw page.content if page
  end

end
