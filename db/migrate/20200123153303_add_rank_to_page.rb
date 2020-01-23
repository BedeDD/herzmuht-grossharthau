class AddRankToPage < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :rank, :integer, default: 999
  end
end
