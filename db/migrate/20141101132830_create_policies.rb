class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :name
      t.text :shortdesc
      t.text :longdesc
      t.decimal :monthlypremium
      t.decimal :annualpremium
      t.decimal :policylimit
      t.integer :exclusionperiod
      t.integer :minretentionperiod

      t.timestamps
    end
  end
end
