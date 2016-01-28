class Iqan < ActiveRecord::Base
	has_many :themeparagraphs
	has_many :themes, through: :themeparagraphs
	has_many :subthemeparagraphs
	has_many :subthemes, through: :subthemeparagraphs
end
