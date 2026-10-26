class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.10.2/besu-26.10.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "20a1fc58828bf1e2f06c7a2addcde2b7be10e7c09d0f623944f278857fd4ff43"

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
