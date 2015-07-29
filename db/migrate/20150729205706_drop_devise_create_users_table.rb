class DropDeviseCreateUsersTable < ActiveRecord::Migration
  def change
  	drop_table :users
  end
end
