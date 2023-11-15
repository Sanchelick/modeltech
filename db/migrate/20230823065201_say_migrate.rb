class SayMigrate < ActiveRecord::Migration[7.0]
  def up
    say "Aboba"
  end

  def down
    say "Baobab"
  end
end
