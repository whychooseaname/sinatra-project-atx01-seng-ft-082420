class CreateExpos < ActiveRecord::Migration[6.0]
  def change
    create_table :expos do |t|
      t.string :name
      t.string :description
    end
  end
end
