class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.10.0/besu-26.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "36ddd158df8ce15c613f0ae9fa66b628f7a31ec3bc09de02efa09c0ae11f41b1"

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
