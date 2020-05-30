class CreateDateis < ActiveRecord::Migration[6.0]
  def change
    create_table :dateis do |t|
      t.string :Name
      t.string :Titel

      t.timestamps
    end
  end
end
