class ChangeIntroduction < ActiveRecord::Migration
  def change
  	change_table :courses do |t|
  		t.change :introduction, :text
	end
  end
end
