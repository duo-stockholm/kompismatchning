# frozen_string_literal: true

class CreateProfessions < ActiveRecord::Migration[5.0]
  def change
    create_table :professions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
