module Admin::ContactUsPagesHelper

  def new_contact_us_page_needed?
    Admin::ContactUsPage.count == 0
  end

end
