Pod::Spec.new do |s|
  s.name             = 'Monstera'
  s.version          = '0.1.0'
  s.summary          = 'Basic class extensions for daily development.'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Basic class extension for daily development, just for fun.
                       DESC

  s.homepage         = 'https://github.com/jooyyy/Monstera'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'joy' => 'joy060102@gmail.com' }
  s.source           = { :git => 'https://github.com/jooyyy/Monstera.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Monstera/Sources/**/*'
  
  # s.resource_bundles = {
  #   'Monstera' => ['Monstera/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
