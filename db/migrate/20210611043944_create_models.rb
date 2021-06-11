class CreateModels < ActiveRecord::Migration[6.1]
  def change
    create_table :u do |t|
      t.string :User

      t.timestamps
    end
  end
end
