source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '13.0'

use_frameworks!

    post_install do |installer|
            installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '5.0' # or '5.0'
        end
    end
end

def third_party_pods 
  pod 'Alamofire'
  pod 'RealmSwift'
  pod 'AlamofireImage'
  pod 'STTabbar'
end

target 'IChef' do
  third_party_pods
end

