namespace :test do
  desc "Run XCUITests for Production"
  task :production do
    project_path = "Bazel_Migrate"
    destination = "id=CBCCE22E-C2D3-4AEA-9A7D-41DD0225AB98"
    scheme = "Bazel_Migrate_Production"

    sh "xcodebuild test -project #{project_path}.xcodeproj -scheme #{scheme} -destination '#{destination}'"
  end

  desc "Run XCUITests for Staging"
  task :staging do
    project_path = "Bazel_Migrate"
    destination = "id=CBCCE22E-C2D3-4AEA-9A7D-41DD0225AB98"
    scheme = "Bazel_Migrate_Staging"

    sh "xcodebuild test -project #{project_path}.xcodeproj -scheme #{scheme} -destination '#{destination}'"
  end

  desc "Run XCUITests for both Production and Staging"
  task :run_all => [:production, :staging]
end
