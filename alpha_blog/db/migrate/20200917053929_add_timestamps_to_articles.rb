class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change

    # add_column is a built-in method on ActiveRecord::Migration
    # which takes 3 args
    # 0: table name
    # 1: new attribute name
    # 2: attribute type
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
