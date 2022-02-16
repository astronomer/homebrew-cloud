# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT110Stage < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.1.0-stage"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.1.0-stage/cloud-cli_1.1.0-stage_Darwin_arm64.tar.gz"
      sha256 "bc91fd4e264a4a5080dcd2e42e858a71531a5a9442c8705e9244b9b2c33e0535"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.1.0-stage/cloud-cli_1.1.0-stage_Darwin_x86_64.tar.gz"
      sha256 "1a354a8f352e0444e1f7835342ee05d3fc7ec1d5e866d45b6d727552cc9ac0ad"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.1.0-stage/cloud-cli_1.1.0-stage_Linux_arm64.tar.gz"
      sha256 "df5a07b4274f8ded382144742a827d4bbe3e41309eab1b591d219f62f7f1884d"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.1.0-stage/cloud-cli_1.1.0-stage_Linux_x86_64.tar.gz"
      sha256 "10f4646b1476930c7259d519666eacd53db643c5da9d1290465db9479186212a"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
