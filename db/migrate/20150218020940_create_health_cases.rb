class CreateHealthCases < ActiveRecord::Migration
  def change
    create_table :health_cases do |t|
      t.string :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :health_cases, :users
  end
end
