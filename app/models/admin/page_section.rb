class Admin::PageSection < ActiveRecord::Base
  attr_accessible :lang, :name
  has_many :pages, class_name: Admin::Page, foreign_key: 'section_id'
end
