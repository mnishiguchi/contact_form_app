class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.integer :type
      t.integer :source
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
