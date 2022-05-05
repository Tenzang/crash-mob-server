class CreateCurrency < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.integer :cp, default: 0
      t.integer :sp, default: 0
      t.integer :gp, default: 0
      t.integer :ep, default: 0
      t.integer :pp, default: 0
    end
  end
end
