class CityPage < ActiveRecord::Migration
  def change
  	create_table :gen_package_paragraphs do |t|
    	t.text :text
    	t.attachment :image
    	t.belongs_to :gen_package
      t.timestamps
    end

    add_attachment :gen_packages, :image
  end
end
