class CreateTigers < ActiveRecord::Migration
  def change
    create_table :tigers do |t|
      t.string :name
    end
  end
end
