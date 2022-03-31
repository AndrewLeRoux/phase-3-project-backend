class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :education
      t.boolean :recreational
      t.boolean :social
      t.boolean :diy
      t.boolean :charity
      t.boolean :cooking
      t.boolean :relaxation
      t.boolean :music
      t.boolean :busywork
    end
  end
end
