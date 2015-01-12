class CreateOfficeBearers < ActiveRecord::Migration
  def change
    create_table :office_bearers do |t|
      t.string :position
      t.text :year
      t.string :name

      t.timestamps
    end
  end
end
