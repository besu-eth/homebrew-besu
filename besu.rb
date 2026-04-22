class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.4.0/besu-26.4.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "ddf8438cb46cd23d4a8dba951d76c88c1024c82c2ecf0bd33ff7ab146d412083"

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
