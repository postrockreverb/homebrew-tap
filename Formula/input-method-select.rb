class InputMethodSelect < Formula
  desc "A minimal macOS CLI utility to switch keyboard input methods programmatically, with optional window focus refresh for input methods that use candidate boxes"
  homepage "https://github.com/postrockreverb/input-method-select"
  license "MIT"

  version "v1.0.1"

  on_arm do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-arm64.zip"
    sha256 "0c3bee96dbed6cf325cbac3413796ec5afafedf51f281c8faead6160756f0702"
  end

  on_intel do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-x86_64.zip"
    sha256 "faabba0404d85fe9a4564546cd058233e1fef150ebbfaf6b60e7aec3f8f50066"
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
