class Iqan < ActiveRecord::Base
	has_many :themeparagraphs
	has_many :subthemeparagraphs
end
