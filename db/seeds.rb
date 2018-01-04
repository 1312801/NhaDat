# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'van', email: 'dinhvan2204@gmail.com', address: '556 HCM', number: '01255351349',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Tan', email: 'vantan1104@gmail.com', address: '37 HN', number: '0913979345',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Long', email: 'longlong3937@gmail.com', address: '550 HCM', number: '01247658687',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Son', email: 'Sonnguyen2204@gmail.com', address: '660 HCM', number: '0989765353',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Teo', email: 'Teodeptrai2020@gmail.com', address: '37 HCM', number: '0930909898',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Tung', email: 'Tungnui30303@gmail.com', address: '12 HCM', number: '01255352345',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Nhan', email: 'Nhanvan1098@gmail.com', address: '10 HCM', number: '0978123435',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'quan', email: 'quanque2028@gmail.com', address: '4 HCM', number: '0991987678',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Thuy', email: 'ThuyNguyen3304@gmail.com', address: '90 HCM', number: '01235355666',password: '123456', password_confirmation:'123456',country: 'VN')
User.create!(name: 'Nhu', email: 'NhuNguyen3232@gmail.com', address: '112 HCM', number: '0919387956',password: '123456', password_confirmation:'123456',country: 'VN')

Land.create!(tenduan: 'FLC GRAND HOTEL HẠ LONG', tenchudautu: 'Công ty Cổ phần Tập đoàn FLC', gia:'', phuong: ' Hồng Hà',thanhpho: 'Hạ Long',tinh: 'Quảng Ninh', diachi:'Cột số 3 - số 8, phường Hồng Hà, Hạ Long, Quảng Ninh',dientich: '2.240.000 m²',user_id:1)
Land.create!(tenduan: 'PentStudio', tenchudautu: ' Công ty CP Tứ Hiệp Hồng Hà Dầu Khí', gia:'', phuong: ' Phú Thượng',thanhpho: 'Hà Nội', diachi:'Lô B, số 699 Lạc Long Quân, phường Phú Thượng, quận Tây Hồ, Hà Nội',dientich: ' 45-108m2',user_id:5)
Land.create!(tenduan: 'The Sapphire Residence', tenchudautu: 'Tập đoàn Vàng bạc Đá quý DOJI', gia:'', phuong: ' Hồng Gai',thanhpho: 'Hạ Long',tinh: 'Quảng Ninh', diachi:'Đường Trần Quốc Nghiễn, phường Hồng Gai, TP. Hạ Long, Quảng Ninh',dientich: '7.647 m²',user_id:6)
Land.create!(tenduan: 'Hồng Hà Eco City', tenchudautu: 'Tập đoàn Vàng bạc Đá quý DOJI', gia:'12.8 triệu/m²', phuong: 'Thanh Trì',thanhpho: 'Hà Nội', diachi:'Xã Tứ Hiệp, Thanh Trì, Hà Nội',dientich: '167 m²',user_id:7)
Land.create!(tenduan: 'Ocean Dunes', tenchudautu: 'Tập đoàn Rạng Đông', gia:'15 triệu/m²', phuong: 'Phú Thủy',thanhpho: 'Phan Thiết',tinh: 'Bình Thuận', diachi:'Phường Phú Thủy, Phan Thiết, Bình Thuận',dientich: '620.000 m²',user_id:3)
Land.create!(tenduan: 'Hồ Gươm Plaza', tenchudautu: 'Công ty CP may Hồ Gươm - HOGARSCO', gia:'18.5 triệu/m²', phuong: 'Hà Đông',thanhpho: 'Hà Nội', diachi:'Số 102-104 Trần Phú, KĐT Mộ Lao, Hà Đông, Hà Nội',dientich: '10.316 m²',user_id:2)
Land.create!(tenduan: 'Gold Land Bình Thạnh', tenchudautu: '', gia:'18.5 triệu/m²', phuong: '13',quan: 'Bình Thạnh',thanhpho: 'Hồ Chí Minh', diachi:'Phố Nguyễn Xí, Phường 13, Bình Thạnh, Hồ Chí Minh',dientich: '10.316 m²',user_id:4)
Land.create!(tenduan: 'Thủ Đức Garden Homes', tenchudautu: 'Công ty TNHH Xây dựng - Trang trí Việt Quốc', gia:'17.5 triệu/m²', phuong: 'Hiệp Bình Chánh',thanhpho: 'Hồ Chí Minh', diachi:'Phường Hiệp Bình Chánh, Thủ Đức, Hồ Chí Minh',dientich: '150.000 m²',user_id:1)
Land.create!(tenduan: 'Hanhud Hoàng Quốc Việt', tenchudautu: 'Công ty CP Kinh doanh Phát triển nhà và Đô thị Hà Nội (HanHud)', gia:'27 triệu/m²', phuong: 'Cổ Nhuế 1',thanhpho: 'Hà Nội', diachi:'Số 234 Hoàng Quốc Việt, phường Cổ Nhuế 1, Bắc Từ Liêm, Hà Nội',dientich: '2.443 m²',user_id:3)
