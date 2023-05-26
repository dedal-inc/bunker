# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.primary_key :id
      t.string :login
      t.string :email
      t.string :phone
      t.string :password_digest
      t.string :recovery_password_digest
      t.string :user_name
      t.boolean :is_admin

      t.timestamps
    end
  end
end
