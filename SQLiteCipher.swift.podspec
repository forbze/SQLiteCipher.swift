Pod::Spec.new do |s|
  s.name             = "SQLiteCipher.swift"
  s.version          = "0.0.1"
  s.summary          = "A SQLCipher-ready version of SQLite.swift."

  s.description      = <<-DESC
    SQLiteCipher.swift provides AES256 Encryption for SQLite
                       DESC

  s.homepage         = "https://github.com/stephencelis/SQLiteCipher.swift"
  s.license          = 'MIT'
  s.author           = { "Stephen Celis" => "stephen@stephencelis.com" }
  s.source           = { :git => "https://github.com/stephencelis/SQLiteCipher.swift.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/stephencelis'

  s.module_name      = 'SQLiteCipher'
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.9"

  s.libraries = 'sqlite3'
  s.module_map = "podstuff/module.modulemap"
  s.source_files = 'SQLiteCipher/**/*.{c,h,m,swift}'
  s.dependency 'SQLite.swift', '~> 0.9.2'
end
