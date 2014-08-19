class CreateTesting123s < ActiveRecord::Migration
  def change
    create_table :testing123s do |t|

      t.timestamps
    end
  end
end
