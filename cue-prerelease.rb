# typed: false
# frozen_string_literal: true

class CuePrerelease < Formula
  desc "Validate and define text-based and dynamic configuration"
  homepage "https://cuelang.org"
  deprecate! date: "2026-09-29", because: "has been replaced by the cue formula", replacement_formula: "cue"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.17.1/cue_v0.17.1_darwin_amd64.tar.gz"
      sha256 "80aa026c3f47400c7bfc228b3422fd56b7c6c5ea4d70686f8d8f01ced716d3de"

      define_method(:install) do
        bin.install "cue"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cue-lang/cue/releases/download/v0.17.1/cue_v0.17.1_darwin_arm64.tar.gz"
      sha256 "64921403f012a97f89494c03605db2fbf7d9daa77dc2631819ac4406cb2e8074"

      define_method(:install) do
        bin.install "cue"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/cue-lang/cue/releases/download/v0.17.1/cue_v0.17.1_linux_amd64.tar.gz"
      sha256 "a39b0c97695069d95d276d99be0f5dbabb081d801bfdc9ba49b76efaf94e2369"
      define_method(:install) do
        bin.install "cue"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cue-lang/cue/releases/download/v0.17.1/cue_v0.17.1_linux_arm64.tar.gz"
      sha256 "0d729be30d52c952ca38fc9dcb692caa09d8463fa0b64df5781312779183fbcd"
      define_method(:install) do
        bin.install "cue"
      end
    end
  end

  def caveats
    <<~EOS
      cue-prerelease is no longer updated, and will be removed.
      Replace it with Homebrew's cue formula:
        brew uninstall cue-prerelease && brew reinstall cue
    EOS
  end

  test do
    system bin/"cue", "version"
  end
end
