class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
