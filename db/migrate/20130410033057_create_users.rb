class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :rank
      t.string :firstName
      t.string :lastName
      t.string :middleInitial
      t.date :dateOfBirth
      t.string :MOS
      t.date :ets_pcsDate
      t.string :phoneNum
      t.string :address

      t.timestamps
    end
  end
end
