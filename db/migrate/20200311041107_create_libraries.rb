class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :author
      t.string :punisher
      t.string :genre

      t.timestamps
    end
  end
end
