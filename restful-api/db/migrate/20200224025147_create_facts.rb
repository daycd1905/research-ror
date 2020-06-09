class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :facts do |t|
      t.belongs_to :user
      t.string :fact
      t.integer :likes

      t.timestamps
    end
  end
end
