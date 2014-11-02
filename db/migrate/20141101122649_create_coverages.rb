class CreateCoverages < ActiveRecord::Migration
  def change
    create_table :coverages do |t|
      t.string :name
      t.decimal :liability
      t.decimal :deductible

      t.timestamps
    end
  end
end
