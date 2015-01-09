class CreateLifeMembers < ActiveRecord::Migration
  def change
    create_table :life_members do |t|
      t.string :name
      t.string :period

      t.timestamps
    end
  end
end
