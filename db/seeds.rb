User.destroy_all
Picture.destroy_all
WorkoutPost.destroy_all
Comment.destroy_all
FavPost.destroy_all

############################

User.reset_pk_sequence
Picture.reset_pk_sequence
WorkoutPost.reset_pk_sequence
Comment.reset_pk_sequence
FavPost.reset_pk_sequence



user_1 = User.create(name: "Woodelin", email: "woodelinflorveus@yahoo.com", password:"abc123")
user_2 = User.create(name: "Tyler", email: "tyler@yahoo.com", password:"abc123")

picture_1 = Picture.create(image_url:"https://blog.myfitnesspal.com/wp-content/uploads/2018/07/What%E2%80%99s-the-Best-Form-of-Cardio-for-Fat-Loss.jpg")

workout_post_1 = WorkoutPost.create(title: "Cardio Makes All The Difference", image_url:"https://blog.myfitnesspal.com/wp-content/uploads/2018/07/What%E2%80%99s-the-Best-Form-of-Cardio-for-Fat-Loss.jpg", author:"Woodelin", description:"Starting with the perfect stretch......", likes: 2,  user_id: user_1.id)

comments = Comment.create(content: "this totally works", likes: 5, workout_post_id: workout_post_1.id, user_id: user_1.id)

user_fav_post_1 = FavPost.create(user_id: user_1.id, workout_post_id: workout_post_1.id)

# add picture tag
