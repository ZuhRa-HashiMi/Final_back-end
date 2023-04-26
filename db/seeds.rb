# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_doc = Doctor.create(fullname:"John Smith", specialization: "Cardiology", profile_picture: "https://www.kindpng.com/picc/m/490-4909569_png-images-of-doctors-group-png-download-free.png", fees: "200.00", available_time: "Mon - Fri, 9am - 5pm")

second_doc = Doctor.create(fullname:"Jane", specialization: "Pediatrics", profile_picture: "https://thumbs.dreamstime.com/b/male-doctor-portrait-isolated-white-background-56744085.jpg", fees: "150.00", available_time: "Tue - Thu, 10am - 6pm")

third_doc = Doctor.create(fullname:"Sarah", specialization: "Dermatology", profile_picture: "https://www.shutterstock.com/image-photo/portrait-her-she-nicelooking-attractive-260nw-1729215223.jpg", fees: "175.00", available_time: "Mon - Wed, 9am - 3pm")

fourth_doc = Doctor.create(fullname:"Michael", specialization: "Oncology", profile_picture: "https://www.pngitem.com/pimgs/m/515-5158817_telemedicine-doctor-hd-png-download.png", fees: "250.00", available_time: "Thu - Sat, 10am - 7pm")

fifth_doc = Doctor.create(fullname:"Emily", specialization: "Psychiatry", profile_picture: "https://thumbs.dreamstime.com/b/portrait-beautiful-asian-woman-doctor-wearing-uniform-sitting-smiling-to-teeth-white-look-camera-feel-happy-218662857.jpg", fees: "150.00", available_time: "Mon - Fri, 11am - 7pm")

sixth_doc = Doctor.create(fullname:"David", specialization: "Orthopedics", profile_picture: "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg", fees: "225.00", available_time: "Mon - Thu, 8am - 4pm")

seventh_doc = Doctor.create(fullname:"Rachel", specialization: "Gynecology", profile_picture: "https://st2.depositphotos.com/1013513/12104/i/950/depositphotos_121040752-stock-photo-smiling-female-doctors-working-in.jpg", fees: "190.00", available_time: "Mon - Fri, 9am - 5pm")

eighth_doc = Doctor.create(fullname:"William", specialization: "Neurology", profile_picture: "https://t3.ftcdn.net/jpg/02/95/51/80/360_F_295518052_aO5d9CqRhPnjlNDTRDjKLZHNftqfsxzI.jpg", fees: "275.00", available_time: "Wed - Sun, 11am - 7pm")

ninth_doc = Doctor.create(fullname:"Jessica", specialization: "Allergy and Immunology", profile_picture: "https://static.vecteezy.com/system/resources/previews/005/128/689/large_2x/beautiful-woman-doctor-with-hijab-portrait-on-white-background-free-photo.jpg", fees: "150.00", available_time: "Tue - Thu, 8am - 4pm")