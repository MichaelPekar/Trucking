class Admin::Page < ActiveRecord::Base
  attr_accessible :content, :section_id, :title
  belongs_to :section, class_name: Admin::PageSection
end
