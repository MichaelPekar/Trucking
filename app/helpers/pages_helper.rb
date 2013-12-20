module PagesHelper

  def about_as_page
    page = Admin::AboutUsPage.first
    raw page.content if page
  end

end
