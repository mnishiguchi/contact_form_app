class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.integer :lead_type, null: false
      t.integer :lead_source, null: false
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
