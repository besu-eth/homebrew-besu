class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.11.0/besu-25.11.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "a91b07434e7c4a57bb336888f5262b6e92518bf5fd8323624f74b0b5637c28d5"

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
