# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT131Stage2 < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.3.1-stage2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.3.1-stage2/cloud-cli_1.3.1-stage2_Darwin_arm64.tar.gz"
      sha256 "96397da2464d0a67ad1321ff6e2894f1bed221c796a4d61d2d8014cc5f2645b2"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.3.1-stage2/cloud-cli_1.3.1-stage2_Darwin_x86_64.tar.gz"
      sha256 "f36e80e3508f4a5a6efcf4e4e8e9e221a91b91aeb044068d1ba59229a552475b"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.3.1-stage2/cloud-cli_1.3.1-stage2_Linux_arm64.tar.gz"
      sha256 "5ee660351d49c40c7e98528af3f78f1d3afc8c75abc6cacc1e188960107c4540"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.3.1-stage2/cloud-cli_1.3.1-stage2_Linux_x86_64.tar.gz"
      sha256 "a46b5fe479dffb35dcf09c208bc08d3a735338e8dd2eff18587ac3b23428e8c0"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
