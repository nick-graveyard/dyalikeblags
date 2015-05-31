class CreateDyalikeblagsComments < ActiveRecord::Migration
  def change
    create_table :dyalikeblags_comments do |t|
      t.text :comment
      t.references :user, index: true
      t.references :post, index: true
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
