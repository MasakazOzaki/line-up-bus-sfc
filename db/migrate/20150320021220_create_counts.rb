class CreateCounts < ActiveRecord::Migration
  def change
    create_table :star_counts do |t|
      t.timestamps null: false
    end
      create_table :sky_counts do |t|
      t.timestamps null: false
    end
    create_table :sea_counts do |t|
      t.timestamps null: false
    end
    create_table :seat_counts do |t|
      t.timestamps null: false
    end
    create_table :desk_counts do |t|
      t.timestamps null: false
    end
    create_table :table_counts do |t|
      t.timestamps null: false
    end  
    create_table :shonandai_star_counts do |t|
      t.timestamps null: false
    end
      create_table :shonandai_sky_counts do |t|
      t.timestamps null: false
    end
    create_table :shonandai_sea_counts do |t|
      t.timestamps null: false
    end
    create_table :shonandai_seat_counts do |t|
      t.timestamps null: false
    end
    create_table :shonandai_desk_counts do |t|
      t.timestamps null: false
    end
    create_table :shonandai_table_counts do |t|
      t.timestamps null: false
    end
  end
end
