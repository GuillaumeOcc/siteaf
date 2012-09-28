class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.belongs_to :job
    t.string :lastname
    t.string :firstname
    t.string :login
    t.string :password
      t.timestamps
    end
  end
end
