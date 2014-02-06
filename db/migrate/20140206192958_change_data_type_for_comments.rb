class ChangeDataTypeForComments < ActiveRecord::Migration
  def change
  	change_table :inquiries do |t|
  		t.change :comments, :text
  	end
  end
end
