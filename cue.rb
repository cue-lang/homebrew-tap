# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://github.com/cuelang/cue"
  version "0.0.4"

  if OS.mac?
    url "https://github.com/cuelang/cue/releases/download/v0.0.4/cue_0.0.4_Darwin_x86_64.tar.gz"
    sha256 "163882da148b8d1dddc72c8ad6d6e8f1000ed65991c1bd840a900642171f7d59"
  elsif OS.linux?
    url "https://github.com/cuelang/cue/releases/download/v0.0.4/cue_0.0.4_Linux_x86_64.tar.gz"
    sha256 "84d944678c8e2879c3bf488935d1975758d4e7d624e3990c406e923fd1ed4770"
  end

  def install
    bin.install "cue"
  end

  test do
    system "#{bin}/cue version"
  end
end
