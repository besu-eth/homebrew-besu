class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.9.0/besu-26.9.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "749f90b0b29b8138f5d58b949d19eed721826cab66bfb8d983f86e15831d22b2"

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
