class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|

      # Rails automatically gives us an integer :id field
      # this will be the primary key for the table
      # auto increments
      # it is not optional
      
      t.string :name # a string column for the planet's name
      t.text :image # a longer text column for the image URL
      t.float :orbit # a float for the orbit time (relative to earth)
      t.float :diameter
      t.float :mass
      t.float :moons

      # The above saves us from writing an SQL statement
      # like 'CREATE TABLE planets( name TEXT, ...)'
      # and because it's ruby code, it's an abstraction away from
      # any specific database format, and can be translated
      # into any specific format

    end
  end
end
