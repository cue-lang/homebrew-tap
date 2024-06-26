# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://cuelang.org"
  version "0.9.2"

  on_macos do
    on_intel do
      url "https://github.com/cue-lang/cue/releases/download/v0.9.2/cue_v0.9.2_darwin_amd64.tar.gz"
      sha256 "87ebebb8459d579ff791843b3228ca64dc372181456d8e2b4ad4e3f0c607c94d"

      def install
        bin.install "cue"
        bin.install "cuepls"
      end
    end
    on_arm do
      url "https://github.com/cue-lang/cue/releases/download/v0.9.2/cue_v0.9.2_darwin_arm64.tar.gz"
      sha256 "0f01909937c7f1b5b58d55e53a7d5366f3b4f8fc48dc31e391dd55340ea1ae95"

      def install
        bin.install "cue"
        bin.install "cuepls"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.9.2/cue_v0.9.2_linux_amd64.tar.gz"
        sha256 "67c88f6c3bdf884301794c3ec91f9e6e3f660e7de3b7e10cd29fbbd291baac50"

        def install
          bin.install "cue"
          bin.install "cuepls"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.9.2/cue_v0.9.2_linux_arm64.tar.gz"
        sha256 "3b90c49faaf3367338bd95db0bf76ec86bf4ca7d175d42a221e27bdc8d265256"

        def install
          bin.install "cue"
          bin.install "cuepls"
        end
      end
    end
  end

  test do
    system "#{bin}/cue version"
  end
end
