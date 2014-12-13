class CreateBpas < ActiveRecord::Migration
  def change
    create_table :bpas do |t|

      t.timestamps
    end
  end
end
