class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.integer :year
      t.string :journal

      t.timestamps
    end
  end
end
