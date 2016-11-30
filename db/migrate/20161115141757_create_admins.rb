class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :mobile, null: false
      t.string :password_digest
      t.string :nick_name, null: false
      t.string :real_name, null: false
      t.string :auth_token

      t.timestamps
    end
  end
end
