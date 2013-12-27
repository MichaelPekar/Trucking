class Admin::ContactUsPage < ActiveRecord::Base
  attr_accessible :content, :lang
  validates :lang, presence: true
  validate :validate_lang

  private

  def validate_lang
    if self.class.where(lang: lang).count > 0
    errors[:lang] << "Contact Us Page(#{lang}) already exist."
    end
  end
end
