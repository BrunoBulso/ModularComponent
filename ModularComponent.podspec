#
# Be sure to run `pod lib lint ModularComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ModularComponent'
  s.version          = '1.0.3'
  s.summary          = 'A short description of ModularComponent.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/brunobulso/ModularComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'brunobulso' => 'bruno.bulso@gmail.com' }
  s.source           = { :git => 'https://github.com/brunobulso/ModularComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.1" }

  s.source_files = 'ModularComponent/Classes/**/*.{swift}'
  
   s.resource_bundles = {
     'ModularComponent' => ['ModularComponent/Classes/**/*.{storyboard,xib,png,jpg,strings}']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
