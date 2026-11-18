class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.11.1/besu-26.11.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c441f36c714dec1e9d7923f5a2c40621725c0f39d73d6eec54ce56f49848e4d8"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
