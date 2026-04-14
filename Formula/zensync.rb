class Zensync < Formula
  desc "Backup and restore Zen Browser profile data on macOS"
  homepage "https://github.com/krish-mm/zensync"
  url "https://github.com/krish-mm/zensync/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c63ec807c7b5ddced2fae4c68bce74ba58de42e47b4427e0d78d5a6a0aa43cce"
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
