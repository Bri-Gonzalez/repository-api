class CreateObjs < ActiveRecord::Migration[6.1]
  def change
    create_table :objs do |t|
      t.string :size
      t.references :repository, null: false, foreign_key: true

      t.timestamps
    end
  end
end
