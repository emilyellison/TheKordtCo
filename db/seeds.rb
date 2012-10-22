# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
BlogPost.destroy_all
Video.destroy_all
Track.destroy_all
Content.destroy_all
Comment.destroy_all

puts 'Old data destroyed.'

kordt = User.new(first_name: 'Kordt', last_name: 'Larsen', email: 'kordt@me.com', password: 'foobar', password_confirmation: 'foobar')
kordt.admin = true
kordt.save

puts 'Users created.'

content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod dui id nisl porttitor consectetur. Nam placerat luctus fringilla. Aenean suscipit elit a arcu cursus dictum. Duis tincidunt blandit mi ut pharetra. Cras non nisl ac elit vehicula pretium quis at risus. Donec nibh lectus, posuere nec porttitor quis, dignissim vulputate purus. Sed et nulla vehicula augue pulvinar viverra. Donec egestas laoreet tellus ac iaculis. Donec commodo venenatis lacus, ac ultrices eros aliquet mattis. Donec suscipit odio eu lectus pretium porttitor. Duis in blandit nisi. Nullam rhoncus sollicitudin arcu sit amet porttitor.

Cras a ante erat, sed egestas diam. Sed a massa non purus molestie venenatis. Maecenas quis sapien sit amet lacus lobortis elementum. Donec adipiscing vestibulum rutrum. Integer ac mauris lacus. Maecenas sollicitudin vulputate neque sit amet euismod. Integer dolor quam, laoreet vitae ullamcorper vel, mattis eget sem. Vivamus lobortis venenatis metus. Quisque non lectus nec lacus varius commodo. Mauris semper felis ut dolor molestie ut eleifend lorem egestas.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus elementum velit id orci convallis eu tristique eros dapibus. Suspendisse dui mauris, ultricies a lacinia vel, posuere id est. Maecenas a metus et neque suscipit pellentesque gravida quis erat. Etiam congue, est sed tristique fringilla, felis magna blandit est, vel venenatis nisi odio vitae metus. Sed posuere sapien in orci malesuada at lobortis nisi tincidunt. Cras augue tortor, facilisis at consectetur ac, lacinia sit amet magna. Proin imperdiet rhoncus ligula ut sollicitudin. Praesent pulvinar blandit luctus. Sed arcu quam, venenatis vel semper ut, ultricies sit amet velit. Donec et sem quis tellus dignissim sodales vel ac lorem. Vestibulum blandit nisl at nisl ultrices auctor.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum porttitor blandit arcu, id suscipit elit elementum id. Curabitur dignissim, leo in blandit consectetur, leo justo congue neque, ut ornare dolor arcu id elit. Nulla facilisi. Fusce nec rhoncus diam. Cras egestas ultrices mauris, ut ultrices lectus rutrum vitae. Vestibulum convallis ultricies lacus non tincidunt. Nulla facilisi. Donec justo quam, hendrerit blandit viverra a, porta eget magna. Etiam porta posuere metus ut blandit. Praesent quis pellentesque lectus. Duis auctor leo sit amet nisl iaculis venenatis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur in nibh sit amet ante posuere convallis ut sit amet augue.

Duis luctus aliquet tincidunt. Nulla accumsan accumsan urna eu blandit. Curabitur pellentesque semper nulla id ultrices. Curabitur malesuada pharetra volutpat. Duis id massa lorem. Nunc molestie libero quis erat ornare non rhoncus leo lobortis. Cras id mauris nunc, at condimentum lorem. Suspendisse erat arcu, tincidunt vitae pharetra et, ultricies ut nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."


BlogPost.create(title: 'Using this lens changed my world!', content: content, display: false)
BlogPost.create(title: '5 Tips for Directing Efficiently', content: content, display: true)
BlogPost.create(title: '4 Ways to Drive Away Clients', content: content, display: true)
BlogPost.create(title: '10 Tools You Need for Producing', content: content, display: false)

puts 'Blog Posts created.'

description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod dui id nisl porttitor consectetur. Nam placerat luctus fringilla. Aenean suscipit elit a arcu cursus dictum. Duis tincidunt blandit mi ut pharetra. Cras non nisl ac elit vehicula pretium quis at risus. Donec nibh lectus, posuere nec porttitor quis, dignissim vulputate purus. Sed et nulla vehicula augue pulvinar viverra. Donec egestas laoreet tellus ac iaculis. Donec commodo venenatis lacus, ac ultrices eros aliquet mattis. Donec suscipit odio eu lectus pretium porttitor. Duis in blandit nisi. Nullam rhoncus sollicitudin arcu sit amet porttitor.

Cras a ante erat, sed egestas diam. Sed a massa non purus molestie venenatis. Maecenas quis sapien sit amet lacus lobortis elementum. Donec adipiscing vestibulum rutrum. Integer ac mauris lacus. Maecenas sollicitudin vulputate neque sit amet euismod. Integer dolor quam, laoreet vitae ullamcorper vel, mattis eget sem. Vivamus lobortis venenatis metus. Quisque non lectus nec lacus varius commodo. Mauris semper felis ut dolor molestie ut eleifend lorem egestas."

Video.create(title: 'GitSetGo', link: 'http://vimeo.com/46240886', description: description, writer: true, director: false, producer: true, display: true)
Video.create(title: 'Cats in Tanks', link: 'http://vimeo.com/23608259', description: description, writer: false, director: true, producer: true, display: true)
Video.create(title: 'Young Kittens', link: 'http://vimeo.com/24801093', description: description, writer: true, director: false, producer: true, display: true)
Video.create(title: 'Cute Kittens', link: 'http://vimeo.com/1053647', description: description, writer: true, director: false, producer: true, display: true)
Video.create(title: 'Kittens Playing', link: 'http://vimeo.com/957065', description: description, writer: true, director: false, producer: true, display: true)

puts 'Videos created.'

Track.create(title: 'Fear on Fire', description: 'This is a track I\'ve been working on.', link: "<iframe width='100%' height='166' scrolling='no' frameborder='no' src='http://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F38807074&show_artwork=true'></iframe>")
Track.create(title: 'This land is your land', description: 'This is a track I\'ve been working on.', link: "<iframe width='100%' height='166' scrolling='no' frameborder='no' src='http://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F25068274&show_artwork=true'></iframe>")

puts 'Tracks created.'

Content.create(page: 'The Kordt Co.', element: 'Top Text', description: '# Today, more people than ever are being tasked to create a video for their company or organization. Where do you start? Ask Kordt.')
Content.create(page: 'The Kordt Co.', element: 'Picture 1', description: 'http://www.sxc.hu/pic/m/t/tp/tpacific/644739_studio_light.jpg')
Content.create(page: 'The Kordt Co.', element: 'Picture 2', description: 'http://www.sxc.hu/pic/m/l/le/leosynapse/381410_news_camera.jpg')
Content.create(page: 'The Kordt Co.', element: 'Picture 3', description: 'http://www.sxc.hu/pic/m/g/ge/geryy/507477_photo_film.jpg')
Content.create(page: 'The Kordt Co.', element: 'Bottom Text', description: "Whether you're creating your first video or you've created hundreds, your video will shine according to how well you plan it. That's where scripting comes in.

Do you want your video to be charming and engaging? Witty and thought-provoking? Exciting and music-driven? Hard-hitting and compelling? Whatever style you're after, I can help you achieve it.
And what about your video's content? Will it be voice-over driven? Will there be interviews? Charts and graphs? Animation and graphics? I can help make sure that your content is presented in the most understandable and interesting ways.

Is your subject technical? I've written videos on everything from insects that plague cotton farmers to emerging financial markets, from the technical highlights of new equipment to marketing and merchandising techniques for store employees.")

Content.create(page: 'Writer', element: 'Heading', description: '# Kordt Writes')
Content.create(page: 'Director', element: 'Heading', description: '# Kordt Directs')
Content.create(page: 'Producer', element: 'Heading', description: '# Kordt Produces')
Content.create(page: 'Musician', element: 'Heading', description: '# Kordt Rocks')
Content.create(page: 'Blogger', element: 'Heading', description: '# Kordt Blogs')
Content.create(page: 'Hire', element: 'Heading', description: '# Kordt Works')
Content.create(page: 'Hire', element: 'Pitch', description: "If you are looking for fresh ideas, helpful planning and great scripting, the process can be simple. Tell me what's on your mind, and together, we can make your next video your best video.")
Content.create(page: 'Hire', element: 'Contact Info Heading', description: 'Kordt Larsen')
Content.create(page: 'Hire', element: 'Phone Picture', description: 'http://png-2.findicons.com/files/icons/1676/primo/128/telephone_black.png')
Content.create(page: 'Hire', element: 'Phone Number', description: '(312) 217-4123')
Content.create(page: 'Hire', element: 'E-mail Picture', description: 'http://png-4.findicons.com/files/icons/989/ivista_2/128/email.png')
Content.create(page: 'Hire', element: 'E-mail Address', description: 'kordt@me.com')
Content.create(page: 'Hire', element: 'Residence Picture', description: 'http://png-1.findicons.com/files/icons/242/the_real_christmas_05/128/house.png')
Content.create(page: 'Hire', element: 'Residence', description: 'Chicago, IL')
Content.create(page: 'Hire', element: 'Profile 1 Picture', description: 'http://png-3.findicons.com/files/icons/1983/aquaticus_social/60/vimeo.png')
Content.create(page: 'Hire', element: 'Profile 1 Address', description: 'http://vimeo.com/kordtlarsen')
Content.create(page: 'Hire', element: 'Profile 2 Picture', description: 'http://png-2.findicons.com/files/icons/2473/odern_web_social_icons/64/soundcloud.png')
Content.create(page: 'Hire', element: 'Profile 2 Address', description: 'http://soundcloud.com/kordt')
Content.create(page: 'Hire', element: 'Profile 3 Picture', description: 'http://png-5.findicons.com/files/icons/819/social_me/64/linkedin.png')
Content.create(page: 'Hire', element: 'Profile 3 Address', description: 'http://www.linkedin.com/in/kordt')
Content.create(page: 'Settings', element: 'Background', description: 'http://subtlepatterns.com/patterns/whitey.png')

puts 'Content created.'

blog_post_comments = [ 'Wow. Very powerful blog post.',
                       'Ha! This one made me laugh.',
                       'Great article. I\'m going to have to share this with a colleague of mine.',
                       'Cool article. Reveals a part of the advertising world I didn\'t understand before.' ]

BlogPost.all.each do |blog_post|
  b = blog_post.comments.build(name: 'Emily Ellison', message: blog_post_comments.sample)   
  b.save
end

video_comments = [ 'I love the way that you did the lighting on this one!',
                   'Ha! This one made me laugh.',
                   'Wow. Very powerful video.',
                   'I need a video like this done for me!' ]

Video.all.each do |video|
  v = video.comments.build(name: 'Emily Ellison', message: video_comments.sample)   
  v.save
end

