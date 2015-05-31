class CreateDyalikeblagsStaticPages < ActiveRecord::Migration
  def change
    create_table :dyalikeblags_static_pages do |t|
      t.string :title_bar
      t.text :static_content

      t.timestamps
    end
  end
end
