class CreateSitelists < ActiveRecord::Migration
  def change
    create_table :sitelists do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
