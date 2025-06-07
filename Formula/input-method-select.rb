class InputMethodSelect < Formula
  desc "A minimal macOS CLI utility to switch keyboard input methods programmatically, with optional window focus refresh for input methods that use candidate boxes"
  homepage "https://github.com/postrockreverb/input-method-select"
  license "MIT"

  version "v1.0.3"

  on_arm do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-arm64.zip"
    sha256 "93c2669ef77ba56b8c8791d707d3736ddee8bcd2a38d96403fbb7a330f5d1711"
  end

  on_intel do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-x86_64.zip"
    sha256 "21026080f16514db2ec50aab1a1898639ee3a19c9123a5c5018fa2b34bf55a01"
  end

  def install
    bin.install "input-method-select"
  end

  def uninstall
    rm_f "#{bin}/input-method-select"
  end

  test do
    assert_predicate bin/"input-method-select", :exist?
    system "#{bin}/input-method-select"
  end
end
