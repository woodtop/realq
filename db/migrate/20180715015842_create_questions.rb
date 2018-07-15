class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

       t.string      :title
        t.text        :text
        t.integer        :user_id
        t.integer        :athlete_id
        t.timestamps
    end
  end
end
