class N191 < Formula
  desc "A fork of Microsoft Edit"
  homepage "https://github.com/juanvel4000/n191"
  url "https://github.com/juanvel4000/n191/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "cec58134fcff98350284b21933e75ca527e1e34694cbcaa94dc628fb8c10859d"  

  depends_on "rust"

  def install
    ENV["RUSTC_BOOTSTRAP"] = "1"

    system "cargo", "build", "--config", ".cargo/release.toml", "--release"
    bin.install "target/release/n191"
  end
  test do
    system "#{bin}/n191", "--version"
  end
end
