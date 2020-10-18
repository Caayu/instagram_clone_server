alias Instagram.{Posts, Repo}

mock_photos = 9

photos_list = [
  "https://freestocks.org/fs/wp-content/uploads/2020/10/scared_kitten-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/10/newborn_calf_portrait_2-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2020/10/dried_wild_flowers_meadow-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2016/09/open_book_and_a_cup_of_coffee-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/10/autumn_leaves_in_the_grass-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2016/01/just_give_me_a_kiss-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2017/03/crayons-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2018/10/old_clay_flower_pots_3-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2016/08/girl_laying_on_grass-1000x667.jpg",
  "https://freestocks.org/fs/wp-content/uploads/2016/04/tree_trunk-1000x667.jpg"
]

for idx <- 0..mock_photos do
  photo = %{
    image_url: Enum.at(photos_list, idx),
    caption: Faker.Lorem.Shakespeare.hamlet
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!
end
