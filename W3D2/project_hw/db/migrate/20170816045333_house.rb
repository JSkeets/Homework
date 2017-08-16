class House < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
        t.string :address, null: false
      end 
  end
end
