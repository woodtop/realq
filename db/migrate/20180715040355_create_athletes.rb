class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
        t.string      :name
        t.text        :job
        t.text        :image
        t.timestamps
    end
  end
end
