class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :product_id
       t.integer :photable_id
      t.string :photable_type
          t.attachment :photo
      t.timestamps null: false
    end
  end
end
