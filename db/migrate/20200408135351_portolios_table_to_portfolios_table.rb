class PortoliosTableToPortfoliosTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :portolios, :portfolios
  end
end
