class CreateDyalikeblagsPosts < ActiveRecord::Migration
  def change
    create_table :dyalikeblags_posts do |t|
      t.text :title
      t.text :content
      t.references :user, index: true
      t.string :image
      t.integer :cached_votes_total
      t.integer :cached_votes_score
      t.integer :cached_votes_up
      t.integer :cached_votes_down
      t.integer :cached_weighted_score
      t.integer :cached_weighted_total
      t.float :cached_weighted_average

      t.timestamps
    end
  end
end
