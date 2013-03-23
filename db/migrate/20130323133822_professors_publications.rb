class ProfessorsPublications < ActiveRecord::Migration
  def change
    create_table :professors_publications, :id => false do |t|
      t.references :professor
      t.references :publication
    end
    add_index :professors_publications, [:professor_id, :publication_id]
  end
end
