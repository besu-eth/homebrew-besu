class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.2.0/besu-26.2.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "90b78a6739c37c6edffe362587231c51ce1b816b1f13c7aad94547e1a3a86e10"

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
