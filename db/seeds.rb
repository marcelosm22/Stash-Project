require "open-uri"

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678929952/122774271_mcwuxr.jpg")
user_1 = User.new(username: "marcelosm22", password: "123456", email: "marcelo@gmail.com", admin: true )
user_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_1.save!



file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678929984/120477867_yph5zq.png")
user_2 = User.new(username: "wieland2", password: "123456", email: "wagner@gmail.com", admin: true )
user_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_2.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678929932/122754806_mmzn0v.jpg")
user_3 = User.new(username: "toni8400", password: "123456", email: "antonio@gmail.com", admin: true )
user_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_3.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678929970/122709872_sjtwao.jpg")
user_4 = User.new(username: "rudamafra", password: "123456", email: "ruda@gmail.com", admin: true )
user_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_4.save!




file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930248/everything-everywhere-all-at-once-movie-poster-md_eb61um.jpg")
forum_1 = Forum.new(title: "Everything Everywhere All At Once", creator: "Daniel KwanDaniel Scheinert", year: "2022", category: "Movies" )
forum_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_1.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930278/harry-potter-and-the-order-of-the-phoenix-movie-poster-md_fs5e9x.jpg")
forum_2 = Forum.new(title: "Harry Potter and the Order of the Phoenix", creator: "David Yates", year: "2007", category: "Movies" )
forum_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_2.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930333/x-men-days-of-future-past-movie-poster-md_udohdf.jpg")
forum_3 = Forum.new(title: "X-Men: Days of Future Past", creator: "Bryan Singer", year: "2014", category: "Movies" )
forum_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_3.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930400/the-gray-man-movie-poster-md_ojodrq.jpg")
forum_4 = Forum.new(title: "The Gray Man", creator: "Anthony RussoJoe Russo", year: "2022", category: "Movies" )
forum_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_4.save!


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930469/thor-love-and-thunder-movie-poster-md_qh48fn.jpg")
forum_5 = Forum.new(title: "Thor: Love and Thunder", creator: "Taika Waititi", year: "2022", category: "Movies" )
forum_5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_5.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930549/once-upon-a-time-in-hollywood-movie-poster-md_zpvlos.jpg")
forum_6 = Forum.new(title: "Once Upon a Time... in Hollywood", creator: "Quentin Tarantino", year: "2019", category: "Movies" )
forum_6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_6.save!



file = URI.open("https://media-cache.cinematerial.com/p/500x/1jnlnrpx/little-women-movie-poster.jpg?v=1572362285")
forum_7 = Forum.new(title: "Little Women", creator: "Greta Gerwig", year: "2019", category: "Movies" )
forum_7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_7.save!



file = URI.open("https://cdn.cinematerial.com/p/297x/lpxl3ziv/lady-bird-movie-poster-md.jpg?v=1508866696")
forum_8 = Forum.new(title: "Lady Bird", creator: "Greta Gerwig", year: "2017", category: "Movies" )
forum_8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_8.save!



file = URI.open("https://cdn.cinematerial.com/p/297x/c1r3tmz3/black-swan-movie-poster-md.jpg?v=1456787850")
forum_9 = Forum.new(title: "Black Swan", creator: "Darren Aronofsky", year: "2010", category: "Movies" )
forum_9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_9.save!


file = URI.open("https://cdn.cinematerial.com/p/297x/zjfkr4ca/parasite-movie-poster-md.jpg?v=1565848483")
forum_10 = Forum.new(title: "Parasite", creator: "Bong Joon Ho", year: "2019", category: "Movies" )
forum_10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_10.save!


file = URI.open("https://cdn.cinematerial.com/p/297x/ctpnz4mq/interstellar-movie-poster-md.jpg?v=1456424450")
forum_11 = Forum.new(title: "Interstellar", creator: "Christopher Nolan", year: "2014", category: "Movies" )
forum_11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_11.save!


file = URI.open("https://cdn.cinematerial.com/p/297x/srmnoyxu/pulp-fiction-movie-poster-md.jpg?v=1668291848")
forum_12 = Forum.new(title: "Pulp Fiction", creator: "Quentin Tarantino", year: "1994", category: "Movies" )
forum_12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_12.save!








file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930634/Folder_2_iodtbv.jpg")
forum_13 = Forum.new(title: "Frank", creator: "Amy Winehouse", year: "2003", category: "Music" )
forum_13.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_13.save!


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930637/Folder_hkpqa1.jpg")
forum_14 = Forum.new(title: "Back to Black", creator: "Amy Winehouse", year: "2006", category: "Music" )
forum_14.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_14.save!


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930641/Folder_se0wiu.jpg")
forum_15 = Forum.new(title: "Either/Or", creator: "Elliott Smith", year: "1997", category: "Music" )
forum_15.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_15.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930683/Folder_k2lcfr.png")
forum_16 = Forum.new(title: "Endless Summer Vacation", creator: "Miley Cyrus", year: "2023", category: "Music" )
forum_16.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_16.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930670/Folder_diib3m.png")
forum_17 = Forum.new(title: "Evermore", creator: "Taylor Swift", year: "2021", category: "Music" )
forum_17.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_17.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930658/Folder_2_t0yvry.png")
forum_18 = Forum.new(title: "SOS", creator: "SZA", year: "2022", category: "Music" )
forum_18.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_18.save!


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930663/Folder_oufjua.png")
forum_19 = Forum.new(title: "Ctrl", creator: "SZA", year: "2013", category: "Music" )
forum_19.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_19.save!


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678931061/friends-movie-poster-md_pdazsl.jpg")
forum_20 = Forum.new(title: "Friends", creator: "David Crane and Marta Kauffman", year: "1994", category: "TV Shows" )
forum_20.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_20.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930828/the-good-place-movie-poster-md_jfnfa0.jpg")
forum_21 = Forum.new(title: "The Good Place", creator: "David Schwartz", year: "2016", category: "TV Shows" )
forum_21.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_21.save!

file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930975/the-last-of-us-movie-poster-md_gy2l2p.jpg")
forum_22 = Forum.new(title: "The Last of Us", creator: "Neil Druckmann", year: "2023", category: "TV Shows" )
forum_22.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_22.save!


file = URI.open("https://res.cloudinary.com/djbdn9bdv/image/upload/v1678930858/modern-family-movie-poster-md_tkcb3f.jpg")
forum_23 = Forum.new(title: "Modern Family", creator: "Steven Levitan and Christopher Lloyd", year: "2009", category: "TV Shows" )
forum_23.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
forum_23.save!
