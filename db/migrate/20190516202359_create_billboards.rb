class CreateBillboards < ActiveRecord::Migration[5.2]
  def change
    create_table :billboards do |t|
      t.string :genre
      t.string :chart
      t.date :week

      t.timestamps
    end
  end
end
