class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
     	t.datetime :date
        t.belongs_to :dogsister, foreign_key: true
 		t.belongs_to :city, foreign_key: true
	    t.timestamps
    end
  end
end
