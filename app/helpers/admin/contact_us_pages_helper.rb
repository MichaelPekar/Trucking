module Admin::ContactUsPagesHelper

  def available_contact_us_languages
    application_languages.select{ |l| Admin::ContactUsPage.where(lang: l[:value]).count == 0}
  end

end
