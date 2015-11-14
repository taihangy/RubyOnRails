class CreateHobbiesPeople < ActiveRecord::Migration
  def change
  	# don't generate id column for this joint table --- "id: false"
    create_table :hobbies_people, id: false do |t|
      t.references :person, index: true, foreign_key: true
      t.references :hobby, index: true, foreign_key: true
    end
  end
end
