class CreateAdmins < ActiveRecord::Migration[6.0]
  def up
    create_table :admins do |t|
      t.string :firstname , :limit => 20 ,:null => false
      t.string :lastname,:limit => 25
      t.string :password,:limit => 30
      t.integer :age , :default => 18
      t.date :person_dob

      t.timestamps
    end
  end
   def down 
    drop_table :admins
  end
end
