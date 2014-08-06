class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.references :user, index: true
      t.string :url
      t.string :description
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
