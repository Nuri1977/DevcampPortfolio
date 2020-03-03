class AddBadgeToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :badge, :text
  end
end
