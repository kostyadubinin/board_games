class ChangePublishedAtType < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :games do |t|
        dir.up   { t.change :published_at, :integer }
        dir.down { t.change :published_at, :datetime }
      end
    end
  end
end
