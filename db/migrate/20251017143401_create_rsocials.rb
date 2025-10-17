class CreateRsocials < ActiveRecord::Migration[7.1]
  def change
    create_table :rsocials do |t|
      t.string :title
      t.string :color

      t.timestamps
    end
  end
end
