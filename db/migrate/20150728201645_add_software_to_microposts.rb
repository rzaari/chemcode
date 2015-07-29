class AddSoftwareToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :software, :string
  end
end
