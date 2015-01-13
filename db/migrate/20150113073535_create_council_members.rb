class CreateCouncilMembers < ActiveRecord::Migration
  def change
    create_table :council_members do |t|
      t.string :name
      t.string :post_held

      t.timestamps
    end
  end
end
