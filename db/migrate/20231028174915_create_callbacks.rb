class CreateCallbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :callbacks do |t|
      t.string :name

      t.timestamps
    end
  end
end
