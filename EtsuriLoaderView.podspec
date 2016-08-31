#
# Be sure to run `pod lib lint EtsuriLoaderView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EtsuriLoaderView'
  s.version          = '0.0.4'
  s.summary          = 'Loaderview that animated etsuri logo'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'this is an animated version of etsuri logo that can be used to loading '

  s.homepage         = 'https://github.com/Etsuriltd/EtsuriLoaderView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wahyu sumartha' => 'wahyusumartha@gmail.com' }
  s.source           = { :git => 'https://github.com/Etsuriltd/EtsuriLoaderView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'EtsuriLoaderView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EtsuriLoaderView' => ['EtsuriLoaderView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
