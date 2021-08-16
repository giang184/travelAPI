class AddReviewTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :content_body, :text
      t.column :author, :string
      t.column :country, :string
      t.column :city, :string
      t.column :rating, :integer
    end
  end
end
