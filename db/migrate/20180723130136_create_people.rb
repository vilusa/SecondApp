class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :firs_name
      t.string :last_name
      t.string :age
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
