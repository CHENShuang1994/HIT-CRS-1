require 'digest'
def secure_hash(string)
	Digest::SHA2.hexdigest(string)
end
def generate_seed
	arr = Room.new.attributes.keys - Room.protected_attributes.to_a
	@attributes = arr[4..arr.length]

	5.times do |i|
		Applicant.create(username: "st00#{i}",password: secure_hash("123456"),
			 studentid: "12345#{i}", phone: "12324512345#{i}", department: "Dep #{i}",
			email: "st00#{i}@qq.com", name: "student#{i}",  status: 1, confirm_token: nil)

		Staff.create(username: "staff00#{i}", password: secure_hash("123456"), 
			name: "xx#{i}",  staffid: "12345#{i}", phone: "1232132#{i}",
			email: "staff00#{i}@qq.com",  status: 1, confirm_token: nil, tasks: 0)

		Room.create(week:i+1, location:"20#{i}",building:rand(0..1),size:rand(0..3),
			day1course1:rand(0..1), day1course3:rand(0..1), day1course5:rand(0..1),
			day1course7:rand(0..1), day1course9:rand(0..1), day1course11:rand(0..1),
			day2course1:rand(0..1), day2course3:rand(0..1), day2course5:rand(0..1),
			day2course7:rand(0..1), day2course9:rand(0..1), day2course11:rand(0..1), 
			day3course1:rand(0..1), day3course3:rand(0..1), day3course5:rand(0..1), 
			day3course7:rand(0..1), day3course9:rand(0..1), day3course11:rand(0..1),
			 day4course1:rand(0..1), day4course3:rand(0..1), day4course5:rand(0..1), 
			 day4course7:rand(0..1), day4course9:rand(0..1), day4course11:rand(0..1),
			  day5course1:rand(0..1), day5course3:rand(0..1), day5course5:rand(0..1), 
			  day5course7:rand(0..1), day5course9:rand(0..1), day5course11:rand(0..1), 
			  day6course1:rand(0..1), day6course3:rand(0..1), day6course5:rand(0..1), 
			  day6course7:rand(0..1), day6course9:rand(0..1), day6course11:rand(0..1), 
			  day7course1:rand(0..1), day7course3:rand(0..1), day7course5:rand(0..1), 
			  day7course7:rand(0..1), day7course9:rand(0..1), day7course11:rand(0..1))

	end
end

generate_seed