class CreateCopyrights < ActiveRecord::Migration
  def change
    create_table :copyrights do |t|

      t.timestamps
    end
  end
end
