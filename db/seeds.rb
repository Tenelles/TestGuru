return unless (Category.first.nil?)

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
                           { title: 'Ruby', level: 1, user_id: users_list[0].id, category_id: categories_list[0].id },      # 0
                           { title: 'Ruby', level: 2, user_id: users_list[1].id, category_id: categories_list[0].id },      # 1
                           { title: 'Photoshop', level: 1, user_id: users_list[2].id, category_id: categories_list[1].id }, # 2
                           { title: 'Photoshop', level: 2, user_id: users_list[2].id, category_id: categories_list[1].id }, # 3
                           { title: 'Photoshop', level: 3, user_id: users_list[3].id, category_id: categories_list[1].id }, # 4
                           { title: 'Fruity Loops', user_id: users_list[4].id, category_id: categories_list[2].id }         # 5
                         ])

questions_list = Question.create([
                                   { title: 'What is the difference between puts and print?',
                                     category_id: categories_list[0].id, test_id: tests_list[0].id }, # 0
                                   { title: 'Which method allows you to convert a string to lowercase?',
                                     category_id: categories_list[0].id, test_id: tests_list[0].id }, # 1
                                   { title: 'Who created Ruby?',
                                     category_id: categories_list[0].id, test_id: tests_list[1].id }, # 2
                                   { title: 'What mechanism is used in Ruby instead of multiple inheritance?',
                                     category_id: categories_list[0].id, test_id: tests_list[1].id }, # 3
                                   { title: 'In what year was the stable version of Ruby 2.0 released?',
                                     category_id: categories_list[0].id, test_id: tests_list[1].id }, # 4
                                   { title: 'How to reduce the size of the image file *.jpg without changing the resolution?',
                                     category_id: categories_list[1].id, test_id: tests_list[2].id }, # 5
                                   { title: 'The photo is open in the working window. What happens if you press the key combination Shift+Ctrl+U?', #
                                     category_id: categories_list[1].id, test_id: tests_list[2].id }, # 6
                                   { title: 'What does RGB mean?',
                                     category_id: categories_list[1].id, test_id: tests_list[3].id }, # 7
                                   { title: 'How to start Quick Mask mode?',
                                     category_id: categories_list[1].id, test_id: tests_list[3].id }, # 8
                                   { title: 'What kind of filter is the fastest way to increase the sharpness of photos?',
                                     category_id: categories_list[1].id, test_id: tests_list[4].id }, # 9
                                   { title: 'What tool can be used to automatically create a panorama from multiple photos?',
                                     category_id: categories_list[1].id, test_id: tests_list[4].id }, # 10
                                   { title: 'What keys can be used to increase or decrease the size of the brush?',
                                     category_id: categories_list[1].id, test_id: tests_list[4].id }, # 11
                                   { title: 'What is the number in the octave of the "G"-note?',
                                     category_id: categories_list[2].id, test_id: tests_list[5].id }, # 12
                                   { title: "What clef doesn't exist?",
                                     category_id: categories_list[2].id, test_id: tests_list[5].id }, # 13
                                   { title: "What type of pause doesn't exist?",
                                     category_id: categories_list[2].id, test_id: tests_list[5].id }  # 14
                                 ])

answers_list = Answer.create([
                               { title: 'Print - without skipping a line, puts - with a skip', correct: true, question_id: questions_list[0].id },
                               { title: 'Nothing, both do the same thing', question_id: questions_list[0].id },
                               { title: 'puts allows you to output variables, print - only text;', question_id: questions_list[0].id },
                               { title: 'downcase()', correct: true, question_id: questions_list[1].id },
                               { title: 'lowercase()', question_id: questions_list[1].id },
                               { title: 'dcase()', question_id: questions_list[1].id },
                               { title: 'Yukihiro Matsumoto (Matz)', correct: true, question_id: questions_list[2].id },
                               { title: 'Bill Gates', question_id: questions_list[2].id },
                               { title: 'Mark Zuckerberg', question_id: questions_list[2].id },
                               { title: 'Mixins', correct: true, question_id: questions_list[3].id },
                               { title: 'Facts', question_id: questions_list[3].id },
                               { title: 'Topics', question_id: questions_list[3].id },
                               { title: '2013', correct: true, question_id: questions_list[4].id },
                               { title: '2010', question_id: questions_list[4].id },
                               { title: '2015', question_id: questions_list[4].id },
                               { title: 'Decrease the quality of the file', correct: true, question_id: questions_list[5].id },
                               { title: 'Save it in TIFF format', question_id: questions_list[5].id },
                               { title: 'Use different blending modes', question_id: questions_list[5].id },
                               { title: 'The photo will become black and white', correct: true, question_id: questions_list[6].id },
                               { title: 'The photo will turn black', question_id: questions_list[6].id },
                               { title: 'The photo will turn white', question_id: questions_list[6].id },
                               { title: 'Red, Green, Blue', correct: true, question_id: questions_list[7].id },
                               { title: 'Red, Green, Black', question_id: questions_list[7].id },
                               { title: 'Right, Good, Bad', question_id: questions_list[7].id },
                               { title: 'Q', correct: true, question_id: questions_list[8].id },
                               { title: 'Ctrl+U', question_id: questions_list[8].id },
                               { title: 'Q+M', question_id: questions_list[8].id },
                               { title: 'Filter/Sharpen/Unsharp Mask', correct: true, question_id: questions_list[9].id },
                               { title: 'Filter/Render/Fibers', question_id: questions_list[9].id },
                               { title: 'Filter/Noise/Median', question_id: questions_list[9].id },
                               { title: 'File/Automate/Photomerge', correct: true, question_id: questions_list[10].id },
                               { title: 'File/Scripts/Image Processor', question_id: questions_list[10].id },
                               { title: 'File/Revert', question_id: questions_list[10].id },
                               { title: '"]", "["', correct: true, question_id: questions_list[11].id },
                               { title: '")", "("', question_id: questions_list[11].id },
                               { title: '"1","2"', question_id: questions_list[11].id },
                               { title: '5', correct: true, question_id: questions_list[12].id },
                               { title: '3', question_id: questions_list[12].id },
                               { title: '7', question_id: questions_list[12].id },
                               { title: 'Piano key', correct: true, question_id: questions_list[13].id },
                               { title: 'Treble clef', question_id: questions_list[13].id },
                               { title: 'Bass clef', question_id: questions_list[13].id },
                               { title: 'Quintal', correct: true, question_id: questions_list[14].id },
                               { title: 'Half', question_id: questions_list[14].id },
                               { title: 'Quarter', question_id: questions_list[14].id }
                             ])

TestPassing.create([
                     { user_id: users_list[5].id, test_id: tests_list[0].id },
                     { user_id: users_list[5].id, test_id: tests_list[1].id },
                     { user_id: users_list[5].id, test_id: tests_list[2].id },
                     { user_id: users_list[5].id, test_id: tests_list[3].id },
                     { user_id: users_list[6].id, test_id: tests_list[5].id }
                   ])
