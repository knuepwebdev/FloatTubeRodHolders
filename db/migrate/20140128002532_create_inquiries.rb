class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :comments
    end
  end
end
