module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super
  end
  
end