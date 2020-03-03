module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://placehold.jp/#{height}x#{width}.png"
  end

end