# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://cuelang.org"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cue-lang/cue/releases/download/v0.7.0/cue_v0.7.0_darwin_arm64.tar.gz"
      sha256 "0b10652945f13a3ccc732855ac24401cd868d64eb6f4f839141ddd93c63d255e"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.7.0/cue_v0.7.0_darwin_amd64.tar.gz"
      sha256 "b86efef83abe1b0c90a3cf47a490cd6de5c884d0865ad3463f539b0346a39c8b"

      def install
        bin.install "cue"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cue-lang/cue/releases/download/v0.7.0/cue_v0.7.0_linux_arm64.tar.gz"
      sha256 "8cf589790f806f7a077197d462e71040c8417d1814a1f469e473c468121e823a"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.7.0/cue_v0.7.0_linux_amd64.tar.gz"
      sha256 "6a4306155cbf3f6d89740464dc0921bbaac74b27236a05a92e30cbb5f248d33b"

      def install
        bin.install "cue"
      end
    end
  end

  test do
    system "#{bin}/cue version"
  end
end
