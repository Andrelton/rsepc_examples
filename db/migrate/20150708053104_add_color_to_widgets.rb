class AddColorToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :color, :string
  end
end
