# typed: false
# frozen_string_literal: true

class CuePrerelease < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://cuelang.org"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.4/cue_v0.13.0-alpha.4_darwin_amd64.tar.gz"
      sha256 "81d2deb4c72de25768b8dc054234770b8a5451216ee2e3d750c25598d843ccf0"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.4/cue_v0.13.0-alpha.4_darwin_arm64.tar.gz"
      sha256 "b1219ec5866c204d210f79032c5fb126b600ae2b5664d50ff1acef2676f72254"

      def install
        bin.install "cue"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.4/cue_v0.13.0-alpha.4_linux_amd64.tar.gz"
        sha256 "4289c1399f584f3b262787b3aeed40ff1cef1184073347737e39b8a2cd94e516"

        def install
          bin.install "cue"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.4/cue_v0.13.0-alpha.4_linux_arm64.tar.gz"
        sha256 "28a884f334be907714540d879df7090ea2b00b8db9716a0d0ffcba2be01c3c68"

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
