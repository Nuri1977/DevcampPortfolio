class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
                                
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image


  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

end
