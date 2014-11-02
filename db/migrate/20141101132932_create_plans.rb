class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.text :shortdesc
      t.text :longdesc

      t.timestamps
    end
  end
end
