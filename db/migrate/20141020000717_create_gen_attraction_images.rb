class CreateGenAttractionImages < ActiveRecord::Migration
  def change
    create_table :gen_attraction_images do |t|
    	t.string :name
    	t.text :description
    	t.string :link
    	t.belongs_to :gen_attraction
      t.timestamps
    end
  end
end
