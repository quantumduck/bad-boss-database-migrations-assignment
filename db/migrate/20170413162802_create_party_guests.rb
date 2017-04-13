class CreatePartyGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :dietary_restrictions do |t|
      t.string  :name

      t.timestamps
    end
    create_table :vulnerabilities do |t|
      t.string  :name

      t.timestamps
    end
    create_table :illnesses do |t|
      t.string  :name

      t.timestamps
    end
    create_table :medications do |t|
      t.string  :name

      t.timestamps
    end
    create_table :voting_preferences do |t|
      t.string  :name

      t.timestamps
    end
    create_table :party_guests do |t|
      t.string      :first_name
      t.string      :last_name
      t.references  :dietary_restriction
      t.decimal     :salary
      t.integer     :number_of_kids
      t.references  :vulnerability
      t.references  :illness
      t.references  :medication
      t.references  :voting_preference

      t.timestamps
    end
  end
end
