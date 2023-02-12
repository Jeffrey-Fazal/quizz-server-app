class CreateUsers < ActiveRecord::Migration[5.2]
  # We'll need to decide where want to keep users scores
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
