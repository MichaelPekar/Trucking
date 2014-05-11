class Admin::AboutUsPage < ActiveRecord::Base
  attr_accessible :content, :lang
  validates :lang, presence: true
  validate :validate_lang

  private

  def validate_lang
    arel = self.class.arel_table
    if self.class.where(arel[:lang].eq(self.lang).and(arel[:id].not_eq(self.id))).count > 0
      errors[:lang] << "About Us Page(#{lang}) already exist."
    end
  end

end
