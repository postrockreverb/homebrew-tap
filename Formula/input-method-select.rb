class InputMethodSelect < Formula
  desc "A minimal macOS CLI utility to switch keyboard input methods programmatically, with optional window focus refresh for input methods that use candidate boxes"
  homepage "https://github.com/postrockreverb/input-method-select"
  license "MIT"

  version "v1.0.0"

  on_arm do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-arm64.zip"
    sha256 "b141243fb4cc360806aee147417a46e5532b27ad68af4d4b367bb05065e6f27e"
  end

  on_intel do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-x86_64.zip"
    sha256 "40b40161299d52cf1376b3ef37643e41b7a38838da014be6a9f24c1d8df46043"
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
