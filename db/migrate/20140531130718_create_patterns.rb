class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.references :brand, index: true
      t.text :summary

      t.timestamps
    end
  end
end
