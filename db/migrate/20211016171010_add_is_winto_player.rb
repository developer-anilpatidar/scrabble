class AddIsWintoPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :is_win, :boolean, default: false
  end
end
