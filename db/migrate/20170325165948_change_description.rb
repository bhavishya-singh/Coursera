class ChangeDescription < ActiveRecord::Migration
  def change
  	change_table :courses do |t|
  		t.change :desrciption, :text
	end
  end
end
