class CreateMds < ActiveRecord::Migration[6.0]
  def change
    create_table :mds do |t|
      t.integer :sno
      t.string :client
      t.string :location
      t.string :contactp
      t.integer :mobile
      t.string :email
      t.string :scope
      t.string :status
      t.string :accmanager

      t.timestamps
    end
  end
end
