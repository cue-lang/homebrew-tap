# typed: false
# frozen_string_literal: true

class CuePrerelease < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://cuelang.org"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.3/cue_v0.13.0-alpha.3_darwin_amd64.tar.gz"
      sha256 "96b3c3e1513044a6b9ed9b73edfd40be42d7f9a2a3deef505874f0aaac6d564c"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.3/cue_v0.13.0-alpha.3_darwin_arm64.tar.gz"
      sha256 "3c1e72eab55355108663b1327af6ed7f323e048690a6e8a99f4e8efdf2049279"

      def install
        bin.install "cue"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.3/cue_v0.13.0-alpha.3_linux_amd64.tar.gz"
        sha256 "53c909752331dc99074eb881b65e1d99176099d038a3791a7b275be28c65deb6"

        def install
          bin.install "cue"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.3/cue_v0.13.0-alpha.3_linux_arm64.tar.gz"
        sha256 "55b6aee99b9f5d3233c3afb86ead30e392285d92b1c5f639ce02cb7f3c9ff919"

        def install
          bin.install "cue"
        end
      end
    end
  end

  test do
    system "#{bin}/cue version"
  end
end
