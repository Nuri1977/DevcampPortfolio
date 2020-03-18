class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized, :badge

  after_initialize :set_defaults

end
