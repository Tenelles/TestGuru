return if Category.exists?

categories_list = Category.create([
                                    { title: 'Programming' }, # 0
                                    { title: 'Digital art' }, # 1
                                    { title: 'Music' }        # 2
                                  ])

users_list = User.create([
                           { name: 'Robert Martin' },  # 0
                           { name: 'Kent D. Lee' },    # 1
                           { name: 'Tonge Gary' },     # 2
                           { name: 'Daniel Conway' },  # 3
                           { name: 'Gareth Cocker' },  # 4
                           { name: 'Kirill Sukharev' }, # 5
                           { name: 'Anna Korneva' } # 6
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
                                   { title: 'What is the difference between puts and print?',
                                     test: tests_list[0] }, # 0
                                   { title: 'Which method allows you to convert a string to lowercase?',
                                     test: tests_list[0] }, # 1
                                   { title: 'Who created Ruby?',
                                     test: tests_list[1] }, # 2
                                   { title: 'What mechanism is used in Ruby instead of multiple inheritance?',
                                     test: tests_list[1] }, # 3
                                   { title: 'In what year was the stable version of Ruby 2.0 released?',
                                     test: tests_list[1] }, # 4
                                   { title: 'How to reduce the size of the image file *.jpg without changing the resolution?',
                                     test: tests_list[2] }, # 5
                                   { title: 'The photo is open in the working window. What happens if you press the key combination Shift+Ctrl+U?', #
                                     test: tests_list[2] }, # 6
                                   { title: 'What does RGB mean?',
                                     test: tests_list[3] }, # 7
                                   { title: 'How to start Quick Mask mode?',
                                     test: tests_list[3] }, # 8
                                   { title: 'What kind of filter is the fastest way to increase the sharpness of photos?',
                                     test: tests_list[4] }, # 9
                                   { title: 'What tool can be used to automatically create a panorama from multiple photos?',
                                     test: tests_list[4] }, # 10
                                   { title: 'What keys can be used to increase or decrease the size of the brush?',
                                     test: tests_list[4] }, # 11
                                   { title: 'What is the number in the octave of the "G"-note?',
                                     test: tests_list[5] }, # 12
                                   { title: "What clef doesn't exist?",
                                     test: tests_list[5] }, # 13
                                   { title: "What type of pause doesn't exist?",
                                     test: tests_list[5] }  # 14
                                 ])

answers_list = Answer.create([
                               { title: 'Print - without skipping a line, puts - with a skip', correct: true, question: questions_list[0] },
                               { title: 'Nothing, both do the same thing', question: questions_list[0] },
                               { title: 'puts allows you to output variables, print - only text;', question: questions_list[0] },
                               { title: 'downcase()', correct: true, question: questions_list[1] },
                               { title: 'lowercase()', question: questions_list[1] },
                               { title: 'dcase()', question: questions_list[1] },
                               { title: 'Yukihiro Matsumoto (Matz)', correct: true, question: questions_list[2] },
                               { title: 'Bill Gates', question: questions_list[2] },
                               { title: 'Mark Zuckerberg', question: questions_list[2] },
                               { title: 'Mixins', correct: true, question: questions_list[3] },
                               { title: 'Facts', question: questions_list[3] },
                               { title: 'Topics', question: questions_list[3] },
                               { title: '2013', correct: true, question: questions_list[4] },
                               { title: '2010', question: questions_list[4] },
                               { title: '2015', question: questions_list[4] },
                               { title: 'Decrease the quality of the file', correct: true, question: questions_list[5] },
                               { title: 'Save it in TIFF format', question: questions_list[5] },
                               { title: 'Use different blending modes', question: questions_list[5] },
                               { title: 'The photo will become black and white', correct: true, question: questions_list[6] },
                               { title: 'The photo will turn black', question: questions_list[6] },
                               { title: 'The photo will turn white', question: questions_list[6] },
                               { title: 'Red, Green, Blue', correct: true, question: questions_list[7] },
                               { title: 'Red, Green, Black', question: questions_list[7] },
                               { title: 'Right, Good, Bad', question: questions_list[7] },
                               { title: 'Q', correct: true, question: questions_list[8] },
                               { title: 'Ctrl+U', question: questions_list[8] },
                               { title: 'Q+M', question: questions_list[8] },
                               { title: 'Filter/Sharpen/Unsharp Mask', correct: true, question: questions_list[9] },
                               { title: 'Filter/Render/Fibers', question: questions_list[9] },
                               { title: 'Filter/Noise/Median', question: questions_list[9] },
                               { title: 'File/Automate/Photomerge', correct: true, question: questions_list[10] },
                               { title: 'File/Scripts/Image Processor', question: questions_list[10] },
                               { title: 'File/Revert', question: questions_list[10] },
                               { title: '"]", "["', correct: true, question: questions_list[11] },
                               { title: '")", "("', question: questions_list[11] },
                               { title: '"1","2"', question: questions_list[11] },
                               { title: '5', correct: true, question: questions_list[12] },
                               { title: '3', question: questions_list[12] },
                               { title: '7', question: questions_list[12] },
                               { title: 'Piano key', correct: true, question: questions_list[13] },
                               { title: 'Treble clef', question: questions_list[13] },
                               { title: 'Bass clef', question: questions_list[13] },
                               { title: 'Quintal', correct: true, question: questions_list[14] },
                               { title: 'Half', question: questions_list[14] },
                               { title: 'Quarter', question: questions_list[14] }
                             ])

TestPassing.create([
                   { user: users_list[5], test: tests_list[0] },
                     { user: users_list[5], test: tests_list[1] },
                     { user: users_list[5], test: tests_list[2] },
                     { user: users_list[5], test: tests_list[3] },
                     { user: users_list[6], test: tests_list[5] }
                   ])
