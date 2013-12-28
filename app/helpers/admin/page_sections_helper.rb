module Admin::PageSectionsHelper
  def available_page_section_languages
    application_languages.select{ |l| Admin::PageSection.where(lang: l[:value]).count == 0}
  end
end
