class CreateAmds < ActiveRecord::Migration[6.0]
  def change
    create_table :amds do |t|
      t.integer :sno
      t.string :name
      t.string :location
      t.string :contactp
      t.integer :mobile
      t.string :email
      t.string :toc
      t.string :status
      t.string :blead

      t.timestamps
    end
  end
end
