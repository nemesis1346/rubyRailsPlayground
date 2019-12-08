# frozen_string_literal: true

class AddTypPositions < ActiveRecord::Migration[5.2]
  def up
    TypPosition.create(name: 'Chief of Operations')
    TypPosition.create(name: 'Director')
    TypPosition.create(name: 'Regional Manager')
    TypPosition.create(name: 'Store Manager')
    TypPosition.create(name: 'Employee')
  end

  def down; end
end
