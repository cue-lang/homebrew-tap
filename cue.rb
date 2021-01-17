# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://github.com/cuelang/cue"
  version "0.3.0-beta.2"

  if OS.mac?
    url "https://github.com/cuelang/cue/releases/download/v0.3.0-beta.2/cue_0.3.0-beta.2_Darwin_x86_64.tar.gz"
    sha256 "998c4cdb05aa5dbe1232f6434d74a2375c6d27aef683724e36d7851d07f6a769"
  elsif OS.linux?
    url "https://github.com/cuelang/cue/releases/download/v0.3.0-beta.2/cue_0.3.0-beta.2_Linux_x86_64.tar.gz"
    sha256 "9702962db84ebd1abcd5554353a6e62aed6649d5074527ec7a21352500c84c27"
  end

  def install
    bin.install "cue"
  end

  test do
    system "#{bin}/cue version"
  end
end
