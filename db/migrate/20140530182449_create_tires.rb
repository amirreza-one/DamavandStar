class CreateTires < ActiveRecord::Migration
  def change
    create_table :tires do |t|
      t.string :brand , null: false
      t.string :size , null: false
      t.string :tire_type
      t.string :pattern , null: false
      t.integer :year
      t.integer :week
      t.text :summary
      t.integer :price

      t.timestamps
    end
  end
end
