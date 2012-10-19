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
Content.destroy_all

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

Content.create(page: 'The Kordt Co.', element: 'Top Text', description: '# Today, more people than ever are being tasked to create a video for their company or organization. Where do you start? Ask Kordt.')
Content.create(page: 'The Kordt Co.', element: 'Picture_1', description: 'http://www.sxc.hu/pic/m/t/tp/tpacific/644739_studio_light.jpg')
Content.create(page: 'The Kordt Co.', element: 'Picture_2', description: 'http://www.sxc.hu/pic/m/l/le/leosynapse/381410_news_camera.jpg')
Content.create(page: 'The Kordt Co.', element: 'Picture_3', description: 'http://www.sxc.hu/pic/m/g/ge/geryy/507477_photo_film.jpg')
Content.create(page: 'The Kordt Co.', element: 'Bottom Text', description: "Whether you're creating your first video or you've created hundreds, your video will shine according to how well you plan it. That's where scripting comes in.

Do you want your video to be charming and engaging? Witty and thought-provoking? Exciting and music-driven? Hard-hitting and compelling? Whatever style you're after, I can help you achieve it.
And what about your video's content? Will it be voice-over driven? Will there be interviews? Charts and graphs? Animation and graphics? I can help make sure that your content is presented in the most understandable and interesting ways.

Is your subject technical? I've written videos on everything from insects that plague cotton farmers to emerging financial markets, from the technical highlights of new equipment to marketing and merchandising techniques for store employees.")

puts 'Content created.'