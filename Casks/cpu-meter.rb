cask "cpu-meter" do
  version "0.1.1"
  sha256 "b19d96aa8008be719e94b9370170552672418c6fbfcc2c4e20ae83d12b1ae18c"

  url "https://github.com/jbelvoncik/CPU_Meter/releases/download/v#{version}/CPU_Meter_v#{version}_macOS.zip",
      verified: "github.com/jbelvoncik/CPU_Meter/"
  name "CPU_Meter"
  desc "Floating macOS overlay showing CPU, GPU, and ANE load"
  homepage "https://github.com/jbelvoncik/CPU_Meter"

  app "CPU_Meter.app"

  caveats <<~EOS
    CPU_Meter uses macOS IOReport to estimate GPU and ANE usage.
    No root privileges required. Compatible with macOS 26 (Tahoe) and later.
  EOS
end
