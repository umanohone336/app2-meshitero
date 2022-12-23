class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
# def change
  # create_table :テーブル名 do |t|
    # t.データ型 :カラム名
  # end
# end