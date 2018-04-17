class AddPositonToPolaroids < ActiveRecord::Migration[5.1]
  def change
    add_column :polaroids, :position, :integer
  end
end
