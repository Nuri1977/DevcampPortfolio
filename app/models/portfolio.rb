class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

	after_initialize :set_defaults

	def set_defaults
    self.main_image ||= "http://placehold.jp/600x400.png"
    self.thumb_image ||= "http://placehold.jp/350x200.png" 
	end
end
