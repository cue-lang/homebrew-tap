# typed: false
# frozen_string_literal: true

class CuePrerelease < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://cuelang.org"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.2/cue_v0.13.0-alpha.2_darwin_amd64.tar.gz"
      sha256 "0fa18e797bc796ba782b26a9b1105aa0a939a2f00686072cefd393ac79ff9d2f"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.2/cue_v0.13.0-alpha.2_darwin_arm64.tar.gz"
      sha256 "36a9f10b1e2f9e7b89bb6ed0c9750dd2e1b88e941f0658158646a3fcd3f18231"

      def install
        bin.install "cue"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.2/cue_v0.13.0-alpha.2_linux_amd64.tar.gz"
        sha256 "65a2a7639d0601a1d2fdc6c3dcb193ddac72baa51137720865f27c4e7120b33f"

        def install
          bin.install "cue"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cue-lang/cue/releases/download/v0.13.0-alpha.2/cue_v0.13.0-alpha.2_linux_arm64.tar.gz"
        sha256 "78c571a6de80adfe6dd4f0b1e1e96925db39c54d9f87be96c7fd8367e229f927"

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
