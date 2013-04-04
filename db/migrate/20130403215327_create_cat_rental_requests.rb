class CreateCatRentalRequests < ActiveRecord::Migration
  def change
    create_table :cat_rental_requests do |t|
      t.integer :cat_id
      t.boolean :approved
      t.datetime :rental_start
      t.datetime :rental_end

      t.timestamps
    end
  end
end
