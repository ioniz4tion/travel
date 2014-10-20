class CreateGenImages < ActiveRecord::Migration
  def change
    create_table :gen_images do |t|
    	t.string :link
    	t.string :name
    	t.text :description
    	t.belongs_to :gen_package
      t.timestamps
    end
  end
end
