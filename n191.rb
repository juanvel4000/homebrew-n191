class N191 < Formula
  desc "A fork of Microsoft Edit"
  homepage "https://github.com/juanvel4000/n191"
  url "https://github.com/juanvel4000/n191/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "aea2d123cc0decdf5ae5b53358ba91b793c7baafdda6201dc8f2ff2aca389a0e"  

  depends_on "rustup"

  def install
    ENV["RUSTC_BOOTSTRAP"] = "1"

    system "cargo", "build", "--release"
    bin.install "target/release/n191"
  end
  test do
    system "#{bin}/n191", "--version"
  end
end
