class CreateBaggages < ActiveRecord::Migration[5.2]
  def change
    create_table :baggages do |t|
      t.string :type, null: false #typeは禁止カラム名だったためkindに変更済み
      t.string :storage_period, null: false
      t.string :code, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
