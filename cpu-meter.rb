cask "cpu-meter" do
  version "0.1.1"
  sha256 "27ee7bdae43e6e160a0caffc4a0afdb543c4e108757a85e9125215e53a67b899"

  url "https://github.com/jbelvoncik/CPU_Meter/releases/download/v#{version}/CPU_Meter_v#{version}_macOS.zip",
      verified: "github.com/jbelvoncik/CPU_Meter/"
  name "CPU_Meter"
  desc "Floating macOS overlay showing CPU, GPU, and ANE load"
  homepage "https://github.com/jbelvoncik/CPU_Meter"

  app "CPU_Meter.app"

  caveats <<~EOS
    CPU_Meter uses macOS IORegistry to estimate GPU and ANE usage.
    No root privileges required. Compatible with macOS 26 (Tahoe) and later.
  EOS
end
