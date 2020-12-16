Pod::Spec.new do |spec|
  spec.name         = "TestLibIcons"
  spec.version      = "1.6"
  spec.summary      = "A short description of TestLibIcons."
  spec.description  = <<-DESC
                        Just testing...
                        DESC
  spec.homepage     = "http://EXAMPLE/TestLibIcons"
  spec.license      = "ISC"
  spec.author             = { "Vitor Pires" => "vitor.pires@thoughtworks.com" }
  spec.source       = { :git => "https://github.com/vitorpirestw/Test_lib_Icons.git", :tag => spec.version }
  spec.source_files  = 'Test_lib_icons/**/*'
  spec.exclude_files = "Classes/Exclude"
  spec.ios.resource_bundle = { 'Test_lib_Icons' => ['Sources/**/*.png', 'Sources/**/*.{ttf}'] }
  spec.swift_version = '5.0'
  spec.platform      = :ios, '10.0'
end
