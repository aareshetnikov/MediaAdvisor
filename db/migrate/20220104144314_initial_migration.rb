class InitialMigration < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.string :director
      t.string :description
      t.string :tags
      t.string :image
      t.timestamps
    end

    create_table :books do |t|
      t.string :name, null: false
      t.string :author
      t.string :description
      t.string :tags
      t.string :image
      t.timestamps
    end

    create_table :games do |t|
      t.string :name, null: false
      t.string :description
      t.string :tags
      t.string :image
      t.timestamps
    end
  end
end
