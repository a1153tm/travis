class CreateDudas < ActiveRecord::Migration
  def change
    create_table :dudas do |t|
      t.text :ngaa

      t.timestamps
    end
  end
end
