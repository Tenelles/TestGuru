File.open('config/version', 'w') { |file| file.write('1.1.0') }

Rails.configuration.version = File.read('config/version')
