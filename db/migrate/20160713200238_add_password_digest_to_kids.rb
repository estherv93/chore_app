class AddPasswordDigestToKids < ActiveRecord::Migration
  def change
      add_column :kids, :password_digest, :string
  end
end
