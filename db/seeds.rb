return if Category.exists?

categories_list = Category.create([
                                    { title: 'Programming' }, # 0
                                    { title: 'Digital art' }, # 1
                                    { title: 'Music' }        # 2
                                  ])

users_list = User.create([
                           { email: 'Robert Martin' },  # 0
                           { email: 'Kent D. Lee' },    # 1
                           { email: 'Tonge Gary' },     # 2
                           { email: 'Daniel Conway' },  # 3
                           { email: 'Gareth Cocker' },  # 4
                           { email: 'Kirill Sukharev' }, # 5
                           { email: 'Anna Korneva' } # 6
                         ])

tests_list = Test.create([
                           { title: 'Ruby', level: 1, author: users_list[0], category: categories_list[0] },      # 0
                           { title: 'Ruby', level: 2, author: users_list[1], category: categories_list[0] },      # 1
                           { title: 'Photoshop', level: 1, author: users_list[2], category: categories_list[1] }, # 2
                           { title: 'Photoshop', level: 2, author: users_list[2], category: categories_list[1] }, # 3
                           { title: 'Photoshop', level: 3, author: users_list[3], category: categories_list[1] }, # 4
                           { title: 'Fruity Loops', author: users_list[4], category: categories_list[2] }         # 5
                         ])

questions_list = Question.create([
                                   { body: 'What is the difference between puts and print?',
                                     test: tests_list[0] }, # 0
                                   { body: 'Which method allows you to convert a string to lowercase?',
                                     test: tests_list[0] }, # 1
                                   { body: 'Who created Ruby?',
                                     test: tests_list[1] }, # 2
                                   { body: 'What mechanism is used in Ruby instead of multiple inheritance?',
                                     test: tests_list[1] }, # 3
                                   { body: 'In what year was the stable version of Ruby 2.0 released?',
                                     test: tests_list[1] }, # 4
                                   { body: 'How to reduce the size of the image file *.jpg without changing the resolution?',
                                     test: tests_list[2] }, # 5
                                   { body: 'The photo is open in the working window. What happens if you press the key combination Shift+Ctrl+U?', #
                                     test: tests_list[2] }, # 6
                                   { body: 'What does RGB mean?',
                                     test: tests_list[3] }, # 7
                                   { body: 'How to start Quick Mask mode?',
                                     test: tests_list[3] }, # 8
                                   { body: 'What kind of filter is the fastest way to increase the sharpness of photos?',
                                     test: tests_list[4] }, # 9
                                   { body: 'What tool can be used to automatically create a panorama from multiple photos?',
                                     test: tests_list[4] }, # 10
                                   { body: 'What keys can be used to increase or decrease the size of the brush?',
                                     test: tests_list[4] }, # 11
                                   { body: 'What is the number in the octave of the "G"-note?',
                                     test: tests_list[5] }, # 12
                                   { body: "What clef doesn't exist?",
                                     test: tests_list[5] }, # 13
                                   { body: "What type of pause doesn't exist?",
                                     test: tests_list[5] }  # 14
                                 ])

answers_list = Answer.create([
                               { body: 'Print - without skipping a line, puts - with a skip', correct: true, question: questions_list[0] },
                               { body: 'Nothing, both do the same thing', question: questions_list[0] },
                               { body: 'puts allows you to output variables, print - only text;', question: questions_list[0] },
                               { body: 'downcase()', correct: true, question: questions_list[1] },
                               { body: 'lowercase()', question: questions_list[1] },
                               { body: 'dcase()', question: questions_list[1] },
                               { body: 'Yukihiro Matsumoto (Matz)', correct: true, question: questions_list[2] },
                               { body: 'Bill Gates', question: questions_list[2] },
                               { body: 'Mark Zuckerberg', question: questions_list[2] },
                               { body: 'Mixins', correct: true, question: questions_list[3] },
                               { body: 'Facts', question: questions_list[3] },
                               { body: 'Topics', question: questions_list[3] },
                               { body: '2013', correct: true, question: questions_list[4] },
                               { body: '2010', question: questions_list[4] },
                               { body: '2015', question: questions_list[4] },
                               { body: 'Decrease the quality of the file', correct: true, question: questions_list[5] },
                               { body: 'Save it in TIFF format', question: questions_list[5] },
                               { body: 'Use different blending modes', question: questions_list[5] },
                               { body: 'The photo will become black and white', correct: true, question: questions_list[6] },
                               { body: 'The photo will turn black', question: questions_list[6] },
                               { body: 'The photo will turn white', question: questions_list[6] },
                               { body: 'Red, Green, Blue', correct: true, question: questions_list[7] },
                               { body: 'Red, Green, Black', question: questions_list[7] },
                               { body: 'Right, Good, Bad', question: questions_list[7] },
                               { body: 'Q', correct: true, question: questions_list[8] },
                               { body: 'Ctrl+U', question: questions_list[8] },
                               { body: 'Q+M', question: questions_list[8] },
                               { body: 'Filter/Sharpen/Unsharp Mask', correct: true, question: questions_list[9] },
                               { body: 'Filter/Render/Fibers', question: questions_list[9] },
                               { body: 'Filter/Noise/Median', question: questions_list[9] },
                               { body: 'File/Automate/Photomerge', correct: true, question: questions_list[10] },
                               { body: 'File/Scripts/Image Processor', question: questions_list[10] },
                               { body: 'File/Revert', question: questions_list[10] },
                               { body: '"]", "["', correct: true, question: questions_list[11] },
                               { body: '")", "("', question: questions_list[11] },
                               { body: '"1","2"', question: questions_list[11] },
                               { body: '5', correct: true, question: questions_list[12] },
                               { body: '3', question: questions_list[12] },
                               { body: '7', question: questions_list[12] },
                               { body: 'Piano key', correct: true, question: questions_list[13] },
                               { body: 'Treble clef', question: questions_list[13] },
                               { body: 'Bass clef', question: questions_list[13] },
                               { body: 'Quintal', correct: true, question: questions_list[14] },
                               { body: 'Half', question: questions_list[14] },
                               { body: 'Quarter', question: questions_list[14] }
                             ])

TestPassing.create([
                   { user: users_list[5], test: tests_list[0] },
                     { user: users_list[5], test: tests_list[1] },
                     { user: users_list[5], test: tests_list[2] },
                     { user: users_list[5], test: tests_list[3] },
                     { user: users_list[6], test: tests_list[5] }
                   ])
