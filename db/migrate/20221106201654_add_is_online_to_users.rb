# frozen_string_literal: true

class AddIsOnlineToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_online, :boolean
  end
end
