class CreateLands < ActiveRecord::Migration[5.1]
  def change
    create_table :lands do |t|
      t.string :Title
      t.string :TenDuAn
      t.string :TenChuDauTu
      t.string :Gia
      t.string :tien
      t.string :Phuong
      t.string :Quan
      t.string :ThanhPho
      t.string :Tinh
      t.string :Dientich
      t.string :string
      t.string :DiaChi
      t.string :QuyMo
      t.integer :SoTang
      t.integer :SoPhongNgu

      t.timestamps
    end
  end
end
