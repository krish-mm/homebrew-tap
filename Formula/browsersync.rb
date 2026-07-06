class Browsersync < Formula
  desc "Back up and restore browser profiles (Zen, Brave, Helium) on macOS"
  homepage "https://github.com/uncaughterrs/browsersync"
  url "https://github.com/uncaughterrs/browsersync/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "f6fca57544064c6745d927b2a4ea3ca95dc6ed5db46ec6d78df7d23d662bac2a"
  license :cannot_represent

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"browsersync", "."
  end

  test do
    output = shell_output("#{bin}/browsersync --help")
    assert_match "Commands:", output
  end
end
