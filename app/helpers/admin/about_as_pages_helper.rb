module Admin::AboutAsPagesHelper

  def new_about_as_page_needed?
    Admin::AboutAsPage.count == 0
  end

end
