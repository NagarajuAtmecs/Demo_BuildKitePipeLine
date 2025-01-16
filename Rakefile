namespace :test do
  desc "Run XCUITests using xcodebuild"
  task :run do
    project_path = "Bazel_Migrate"  # Correct Xcode project name
    scheme = "Bazel_Migrate"  # Correct scheme name
    destination = "platform=iOS Simulator,name=iPhone 16"  # Valid simulator

    # Run xcodebuild to execute the tests
    sh "xcodebuild test -project #{project_path}.xcodeproj -scheme #{scheme} -destination '#{destination}'"
  end
end
