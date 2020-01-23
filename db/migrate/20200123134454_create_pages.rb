class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :seo_url
      t.string :nav_name
      t.string :title
      t.string :heading

      t.timestamps
    end
  end
end
