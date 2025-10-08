cask "cpu-meter" do
  version "0.1.1"
  sha256 "15a9a88f32fa82ee23c93ab32313b1ae02625f2170a2dd76533c6f669306ef97"

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
