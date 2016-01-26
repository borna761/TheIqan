class Subtheme < ActiveRecord::Base
  has_many :subthemeparagraphs
  belongs_to :theme
end
