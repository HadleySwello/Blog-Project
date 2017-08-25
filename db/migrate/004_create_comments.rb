# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.references :post_id
      t.references :user_id

      t.timestamps
    end
  end
end
