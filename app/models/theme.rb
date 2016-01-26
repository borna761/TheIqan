class Theme < ActiveRecord::Base
	has_many :themeparagraphs
	has_many :subthemes
end
