class CreateDyalikeblagsImages < ActiveRecord::Migration
  def change
    create_table :dyalikeblags_images do |t|
      t.string :file_name
      t.string :name

      t.timestamps
    end
  end
end
