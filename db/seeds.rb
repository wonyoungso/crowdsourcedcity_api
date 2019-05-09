# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [{
	"email": "wso@mit.edu",
	"password_digest": "$2a$10$4/AH6G2bFiAc7tUiUdbvE..8AFD3kflsoTRutRkfu5hpwOSxvKWWO",
	"admin": true
}, {
	"email": "mengqihe@mit.edu",
	"password_digest": "$2a$10$9Sx4u6fwXlacnV5YUwRnqOp23MGVFGJ1k8WWSYb4sbDiZbKwxVMKS",
	"admin": true
}, {
	"email": "yuchen@mit.edu",
	"password_digest": "$2a$10$zFNVSZXFWvL/D3sGQjRLz.IdnjA7/dsQZ9OOlwc1JEThZTVok7vQC",
	"admin": true
}, {
	"email": "ekim@gsd.harvard.edu",
	"password_digest": "$2a$10$f.hF0mk.v6HgmS3VbobTkeRuAzMV0F1un.Cchlg3/7mgJP9.b5Gae",
	"admin": true
}, {
	"email": "sew@mit.edu",
	"password_digest": "$2a$10$WTX1WyT9GnghSPzlz9vt1ug9Xp0lepm8pIsquzjGLvDq2XgBX4TD2",
	"admin": true
}]

scanners = [{
	"device_id": "moon",
	"pos_x": 9.0,
	"pos_y": 12.0
}, {
	"device_id": "sue",
	"pos_x": 24.0,
	"pos_y": 12.0
}, {
	"device_id": "dylan",
	"pos_x": 20.0,
	"pos_y": 5.0
}, {
	"device_id": "yuchen",
	"pos_x": 11.0,
	"pos_y": 5.0
}, {
	"device_id": "sarah",
	"pos_x": 17.0,
	"pos_y": 13.5
}]

furnitures = [{
	"mac_address": "d1:f6:ac:ae:4a:93",
	"device_type": "bluetooth",
	"is_furniture": true
}, {
	"mac_address": "b0:91:22:f7:6a:dd",
	"device_type": "bluetooth",
	"is_furniture": true
}, {
	"mac_address": "b0:91:22:f7:6d:40",
	"device_type": "bluetooth",
	"is_furniture": true
}, {
	"mac_address": "b0:91:22:f7:6b:1d",
	"device_type": "bluetooth",
	"is_furniture": true
}, {
	"mac_address": "b0:91:22:f7:64:82",
	"device_type": "bluetooth",
	"is_furniture": true
}, {
	"mac_address": "b0:91:22:f7:61:88",
	"device_type": "bluetooth",
	"is_furniture": true
}, {
	"mac_address": "b0:91:22:f5:43:69",
	"device_type": "bluetooth",
	"is_furniture": true
}]

users.each do |ud|
	user = User.create!(ud)
end


scanners.each do |s|
	scanner = Scanner.create!(s)
end

furnitures.each do |d|
	device = Device.create!(d)
end
