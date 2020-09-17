class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    # create_table is a built-in method on ActiveRecord::Migration
    # each line represents new column.
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end
