class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.12.0/besu-25.12.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "fa02fc7d9f7965036caea0b86efdcfdddb9e982416c8fb026b580815a1ee2de7"

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
