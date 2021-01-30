cask "docker-tech-preview" do
  version "7"
  sha256 "f6d2aa88d98a13e27f95d486b9bc165582707ad2b8075104f5d50959a5e19ddd"

  url "https://desktop.docker.com/mac/m1preview/Docker-AppleSilicon-Preview#{version}.dmg"
  name "Docker Desktop M1 Tech Preview"
  desc "Preview build of Docker Desktop for Apple Silicon"
  homepage "https://www.docker.com/products/docker-desktop"

  auto_updates false

  app "Docker.app"

  uninstall delete:    [
    "/Library/PrivilegedHelperTools/com.docker.vmnetd",
    "/private/var/tmp/com.docker.vmnetd.socket",
    "/usr/local/bin/docker",
    "/usr/local/bin/docker-compose",
    "/usr/local/bin/docker-credential-desktop",
    "/usr/local/bin/docker-credential-ecr-login",
    "/usr/local/bin/docker-credential-osxkeychain",
    "/usr/local/bin/hyperkit",
    "/usr/local/bin/kubectl",
    "/usr/local/bin/kubectl.docker",
    "/usr/local/bin/notary",
    "/usr/local/bin/vpnkit",
  ],
            launchctl: [
              "com.docker.helper",
              "com.docker.vmnetd",
            ],
            quit:      "com.docker.docker"

  zap trash: [
    "~/Library/Saved Application State/com.electron.docker-frontend.savedState",
    "~/Library/Application Scripts/com.docker.helper",
    "~/Library/Containers/com.docker.docker",
    "~/Library/Logs/Docker Desktop",
    "/Library/PrivilegedHelperTools/com.docker.vmnetd",
    "/usr/local/bin/docker.backup",
    "~/Library/Caches/KSCrashReports/Docker",
    "~/Library/Caches/com.docker.docker",
    "~/Library/Containers/com.docker.helper",
    "~/.docker",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker",
    "~/Library/Application Support/Docker Desktop",
    "~/Library/Preferences/com.electron.docker-frontend.plist",
    "~/Library/Preferences/com.docker.docker.plist",
    "/Library/LaunchDaemons/com.docker.vmnetd.plist",
    "~/Library/Group Containers/group.com.docker",
    "/usr/local/bin/docker-compose.backup",
  ],
      rmdir: [
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data",
      ]
end
