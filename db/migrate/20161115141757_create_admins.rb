class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :mobile
      t.string :password_digest
      t.string :nick_name
      t.string :real_name
      t.string :auth_token

      t.timestamps
    end
  end
end
