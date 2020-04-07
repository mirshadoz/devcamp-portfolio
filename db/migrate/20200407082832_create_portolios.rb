class CreatePortolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portolios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.string :thumb_image
      t.string :text

      t.timestamps
    end
  end
end
