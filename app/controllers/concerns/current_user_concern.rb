module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || OpenStruct.new(name: "Guest")
  end
  
end