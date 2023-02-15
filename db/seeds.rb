# Questions seed data
Question.destroy_all

# Category: butterflies
Question.create(content: 'What are people who study or collect butterflies called?', option1:'Papilionnoidists', option2:'Squamatists', option3:'Lepidoterists', option4:'Philatelists', correct_answer:'Lepidoterists', category:'butterflies')
Question.create(content: 'What is the name of the hotly debated butterfly species?', option1:'Monarch', option2:'Painted Lady', option3:'Giant Swallowtail', option4:'Zebra Longwing', correct_answer:'Monarch', category:'butterflies')
Question.create(content: 'What is the scientific name of the Monarch butterfly?', option1:'Danaus plexippus', option2:'Vanessa cardui', option3:'Papilio cresphontes', option4:'Heliconius charithonia', correct_answer:'Danaus plexippus', category:'butterflies')
Question.create(content: 'What is the primary habitat of the Monarch butterfly?', option1:'Forests', option2:'Grasslands', option3:'Deserts', option4:'Fields and meadows', correct_answer:'Fields and meadows', category:'butterflies')
Question.create(content: 'What is the primary food source for the Monarch butterfly during its larval stage?', option1:'Nectar from flowers', option2:'Leaves of milkweed', option3:'Fruit', option4:'Insects', correct_answer:'Leaves of milkweed', category:'butterflies')

# Category: books
Question.create(content: 'The boy who lived?', option1:'Harry Potter', option2:'Romeo', option3:'Percy Jackson', option4:'Prince Harry', correct_answer:'Harry Potter', category:'books')
Question.create(content: 'What is the title of the hotly debated book?', option1:'To Kill a Mockingbird', option2:'The Catcher in the Rye', option3:'The Great Gatsby', option4:'One Hundred Years of Solitude', correct_answer:'To Kill a Mockingbird', category:'books')
Question.create(content: 'Who is the author of "To Kill a Mockingbird"?', option1:'Harper Lee', option2:'Mark Twain', option3:'F. Scott Fitzgerald', option4:'Gabriel Garcia Marquez', correct_answer:'Harper Lee', category:'books')
Question.create(content: 'What is the main theme of "To Kill a Mockingbird"?', option1:'Racism and prejudice', option2:'The American Dream', option3:'The loss of innocence', option4:'The meaning of life', correct_answer:'Racism and prejudice', category:'books')
Question.create(content: 'In what year was "To Kill a Mockingbird" published?', option1:'1960', option2:'1962', option3:'1950', option4:'1940', correct_answer:'1960', category:'books')

# Category: music
Question.create(content: 'What is the best music streaming app?', option1:'Spotify', option2:'Youtube-dl', option3:'Torrents', option4:'Radio', correct_answer:'Spotify', category:'music')
Question.create(content: 'What is the title of the hotly debated album?', option1:'The Life of Pablo', option2:'My Beautiful Dark Twisted Fantasy', option3:'Yeezus', option4:'Graduation', correct_answer:'My Beautiful Dark Twisted Fantasy', category:'music')
Question.create(content: 'Who is the artist behind "My Beautiful Dark Twisted Fantasy"?', option1:'Kanye West', option2:'Drake', option3:'JAY-Z', option4:'Childish Gambino', correct_answer:'Kanye West', category:'music')
Question.create(content: 'What is the main theme of "My Beautiful Dark Twisted Fantasy"?', option1:'Ego and excess', option2:'Heartbreak and regret', option3:'Political activism', option4:'Love and relationships', correct_answer:'Ego and excess', category:'music')
Question.create(content: 'In what year was "My Beautiful Dark Twisted Fantasy" released?', option1:'2010', option2:'2011', option3:'2009', option4:'2008', correct_answer:'2010', category:'music')

# Random controversy 
Question.create(content: 'What is the best solution to control the human population?', option1:'Family planning', option2:'War', option3:'Euthanasia', option4:'Abortion', correct_answer:'Family planning', category:'controversy')
Question.create(content: 'When should someone be considered human?', option1:'At conception', option2:'At birth', option3:'When they reach adulthood', option4:'When they have self-awareness', correct_answer:'At birth', category:'controversy')
Question.create(content: 'Was Hitler good for the German economy?', option1:'Yes', option2:'No', option3:'Undecided', option4:'It depends', correct_answer:'No', category:'controversy')
Question.create(content: 'Is it better to stay at home and learn or risk getting COVID while studying in person?', option1:'Stay at home', option2:'Study in person', option3:'It depends', option4:'Undecided', correct_answer:'Stay at home', category:'controversy')
Question.create(content: 'Is Hong Kong part of China?', option1:'Yes', option2:'No', option3:'Undecided', option4:'It depends', correct_answer:'Yes', category:'controversy')
Question.create(content: 'Was Poland part of Nazi Germany in 1940?', option1:'Yes', option2:'No', option3:'Undecided', option4:'It depends', correct_answer:'Yes', category:'history')

# Random categories
Question.create(content: 'This author lives in a castle and is transphobic?', option1:'Dr. Seuss', option2:'Charles Dickens', option3:'JK Rowling', option4:'Roalad Dahl', correct_answer:'JK Rowling', category:'authors')

# Echo number of questions
puts "Created: #{Question.count} questions"

User.destroy_all
User.create(name: "jeff", email: "jeff@ga.co", username: "jeff", score: rand(100..1000), password: "password123")
User.create(name: "bree", email: "bree@ga.co", username: "bree", score: rand(100..1000), password: "password456")
User.create(name: "joel", email: "joel@ga.co", username: "joel", score: rand(100..1000), password: "password789")
User.create(name: "wayne", email: "wayne@ga.co", username: "wayne", score: rand(100..1000), password: "password1011")
User.create(name: "nicole", email: "nicole@ga.co", username: "nicole", score: rand(100..1000), password: "password1213")
User.create(name: "nick", email: "nick@ga.co", username: "nick", score: rand(100..1000), password: "password1415")

# Echo new users

puts "Created/Updated: #{User.count} users"