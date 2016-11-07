class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :allegiance
      t.string :sex

      t.timestamps
    end
  end
end
