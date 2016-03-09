class CreateWebhooks < ActiveRecord::Migration
  def change
    create_table :webhooks do |t|
      t.string :payload

      t.timestamps null: false
    end
  end
end
