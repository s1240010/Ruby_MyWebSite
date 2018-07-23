class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :affiliation
      t.string :email_address
      t.string :phone_number
      t.text :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
