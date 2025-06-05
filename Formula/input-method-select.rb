class InputMethodSelect < Formula
  desc "A minimal macOS CLI utility to switch keyboard input methods programmatically, with optional window focus refresh for input methods that use candidate boxes"
  homepage "https://github.com/postrockreverb/input-method-select"
  license "MIT"

  version "v1.0.2"

  on_arm do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-arm64.zip"
    sha256 "5624bde326116a5039298660215c964ff8440c399aeaf11c2bf6d2337b162ac8"
  end

  on_intel do
    url "https://github.com/postrockreverb/input-method-select/releases/download/#{version}/dist-x86_64.zip"
    sha256 "dd305b1eb42ccc349d935c845e7c9130467851ab78286921647bcde541ccd81f"
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
