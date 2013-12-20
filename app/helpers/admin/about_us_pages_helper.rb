module Admin::AboutUsPagesHelper

  def new_about_us_page_needed?
    Admin::AboutUsPage.count == 0
  end

end
