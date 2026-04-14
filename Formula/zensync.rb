class Zensync < Formula
  desc "Backup and restore Zen Browser profile data on macOS"
  homepage "https://github.com/krish-mm/zensync"
  url "https://github.com/krish-mm/zensync/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  license :cannot_represent

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"zensync", "."
  end

  test do
    output = shell_output("#{bin}/zensync --help")
    assert_match "Commands:", output
  end
end
