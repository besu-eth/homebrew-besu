class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.1.0/besu-26.1.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "356bae18a4c08a2135aa006e62a550b52428e1d613c08aa97c40ec8b908ae6cf"

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
