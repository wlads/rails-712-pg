class CreateApplicationFeeRates < ActiveRecord::Migration[7.1]
  def change
    create_table :application_fee_rates do |t|
      t.integer :rate
      t.tsrange :effective, default: -> { "tsrange(now()::timestamp, 'infinity'::timestamp)" }

      t.timestamps
    end
  end
end
