# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

target 'MADClub' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MADClub
  pod 'SnapKit', '~> 4.0.0'
  

  target 'MADClubTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MADClubUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

# Makes sure all pods are targeted for Swift 4
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.0'
    end
  end
end
