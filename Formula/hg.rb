# typed: false
# frozen_string_literal: true

# Homebrew formula for HypergraphGo (hg)
class Hg < Formula
  desc "Hypergraph & HoTT tooling in Go"
  homepage "https://github.com/watchthelight/HypergraphGo"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/watchthelight/HypergraphGo/releases/download/v1.7.0/hg_1.7.0_darwin_amd64.tar.gz"
      sha256 "96ed23f949283809c73f98db4de2cd79498f4f2753fee045d3c2e58e87e08001"
    end
    on_arm do
      url "https://github.com/watchthelight/HypergraphGo/releases/download/v1.7.0/hg_1.7.0_darwin_arm64.tar.gz"
      sha256 "dcb1e6550f098c11e92ad256005c0fdbf65e62cfff97e576483709f0073a326e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/watchthelight/HypergraphGo/releases/download/v1.7.0/hg_1.7.0_linux_amd64.tar.gz"
      sha256 "b43b5e8144b83ea19739772b92318f9d19676ed409f0e7a3101a8a358977b291"
    end
    on_arm do
      url "https://github.com/watchthelight/HypergraphGo/releases/download/v1.7.0/hg_1.7.0_linux_arm64.tar.gz"
      sha256 "f68682f6ecaf4ff34f5ac4985eb4b4b023cc2eeeff47e74486b15e1a9909f785"
    end
  end

  def install
    bin.install "hg"
  end

  test do
    assert_match "hg version", shell_output("#{bin}/hg --version")
  end
end
