class Browsersync < Formula
  desc "Back up and restore browser profiles (Zen, Brave, Helium) on macOS"
  homepage "https://github.com/uncaughterrs/browsersync"
  url "https://github.com/uncaughterrs/browsersync/archive/refs/tags/v0.2.0.tar.gz"
  # After you push the v0.2.0 tag, set this to the tarball's sha256:
  #   curl -sL https://github.com/uncaughterrs/browsersync/archive/refs/tags/v0.2.0.tar.gz | shasum -a 256
  sha256 "REPLACE_WITH_V0.2.0_TARBALL_SHA256"
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
