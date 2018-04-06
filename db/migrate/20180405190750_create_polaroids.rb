class CreatePolaroids < ActiveRecord::Migration[5.1]
  def change
    create_table :polaroids do |t|
      t.string :caption
      t.text :image

      t.timestamps
    end
  end
end
