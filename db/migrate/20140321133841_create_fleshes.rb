class CreateFleshes < ActiveRecord::Migration
  def change
    create_table :fleshes do |t|

      t.timestamps
    end
  end
end
