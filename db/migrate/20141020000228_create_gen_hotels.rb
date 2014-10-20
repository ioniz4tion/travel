class CreateGenHotels < ActiveRecord::Migration
  def change
    create_table :gen_hotels do |t|
    	t.string :name
    	t.text :description
    	t.text :pricing
    	t.string :address
    	t.string :link
    	t.belongs_to :gen_package
      t.timestamps
    end
  end
end
