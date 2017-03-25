class ChangeDescriptionName < ActiveRecord::Migration
  def change
    rename_column :courses, :desrciption, :description
  end
end
