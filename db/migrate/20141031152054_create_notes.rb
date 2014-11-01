class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.text :message
    	t.belongs_to :order
    	t.belongs_to :customer
      t.timestamps
    end
  end
end
