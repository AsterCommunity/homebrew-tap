# typed: false
# frozen_string_literal: true

class AsterAcme < Formula
  desc "Embeddable Rust ACME client and CLI for automated certificate issuance"
  homepage "https://github.com/AsterCommunity/AsterACME"
  version "0.1.0-alpha.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-macos-arm64"
      sha256 "c784a31a518f7497763effbf7dece690b486c80851562f51376127ebc2df4cf4"

      def install
        bin.install "aster-acme-v#{version}-macos-arm64" => "aster-acme"
      end
    end

    on_intel do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-macos-amd64"
      sha256 "b69eb5ef77e6979c01bb18e04badf26c6bdfa03aaad75540356289c80405b082"

      def install
        bin.install "aster-acme-v#{version}-macos-amd64" => "aster-acme"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-linux-arm64"
      sha256 "d7c7da8f73f099fe375434f007eca6a02fa7c58e9e5f998ec04fa39d3471634a"

      def install
        bin.install "aster-acme-v#{version}-linux-arm64" => "aster-acme"
      end
    end

    on_intel do
      url "https://github.com/AsterCommunity/AsterACME/releases/download/v#{version}/aster-acme-v#{version}-linux-amd64"
      sha256 "b3b0d2381e05243e0df1128cd9ff6e6310ebd8ddc3dadd676cca7e5bbf7c39b3"

      def install
        bin.install "aster-acme-v#{version}-linux-amd64" => "aster-acme"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aster-acme --version")
  end
end
