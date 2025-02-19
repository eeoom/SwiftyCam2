#
# Be sure to run `pod lib lint SwiftyCam.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyCam2'
  s.version          = '5.0.0'
  s.summary          = 'A Simple, Snapchat inspired camera Framework written in Swift'
  s.ios.deployment_target = '11.0'
  s.swift_version = '4.2'

s.description      = <<-DESC
A drop in Camera View Controller for capturing photos and videos from one AVSession. Written in Swift.
                     DESC

  s.homepage         = 'https://github.com/eeoom/SwiftyCam2'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'BSD', :file => 'LICENSE' }
  s.author           = { 'Stefan Mayr' => 'stefan@eeoom.com' }
  s.source           = { :git => 'https://github.com/eeoom/SwiftyCam2.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Source/**/*'
end
