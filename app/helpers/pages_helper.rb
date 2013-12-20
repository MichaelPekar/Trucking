module PagesHelper

  def about_as_page
    page = Admin::AboutAsPage.first
    raw page.content if page
  end

end
