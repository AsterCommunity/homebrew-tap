# typed: false
# frozen_string_literal: true

class AsterAcme < Formula
  desc "Embeddable Rust ACME client and CLI for automated certificate issuance"
  homepage "https://github.com/AsterCommunity/AsterACME"
  version "0.1.0-alpha.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-macos-arm64"
      sha256 "72c40973ec56e30da2c9bd989384ed6e667efa6d7b603c383ee0c4fa8694b38d"

      def install
        bin.install "aster-acme-v#{version}-macos-arm64" => "aster-acme"
      end
    end

    on_intel do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-macos-amd64"
      sha256 "ba40cbc0a22724291bbc2ddece684b7f358b3a590d131a79b60da53930d222f7"

      def install
        bin.install "aster-acme-v#{version}-macos-amd64" => "aster-acme"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-linux-arm64"
      sha256 "5c95d97e10eb0a71927756a1ce8891ed009b036cd55c4a38e1f36c9032ad2687"

      def install
        bin.install "aster-acme-v#{version}-linux-arm64" => "aster-acme"
      end
    end

    on_intel do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-linux-amd64"
      sha256 "03be566715f8e9a83d156563e0cc1c0f3a6f2eee1723cc5ac89c0cfa292fab77"

      def install
        bin.install "aster-acme-v#{version}-linux-amd64" => "aster-acme"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aster-acme --version")
  end
end
