# Uncomment the next line to define a global platform for your project
platform :ios, '12.4'

# Pods for ViewCodeExperience
def core
  pod 'SnapKit'
  pod 'Colours'
  pod 'ChameleonFramework/Swift', :git => 'https://github.com/wowansm/Chameleon', :branch => 'swift5'
  pod 'SwiftLint'
end

target 'ViewCodeExperience' do
  use_frameworks!
  core
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
