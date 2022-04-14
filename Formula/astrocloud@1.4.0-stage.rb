# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT140Stage < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.4.0-stage"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0-stage/cloud-cli_1.4.0-stage_Darwin_arm64.tar.gz"
      sha256 "667e5d8c3916d0a4e21b48be8720bbc13b1e8d58516bd382b03193c1d5a875b7"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0-stage/cloud-cli_1.4.0-stage_Darwin_x86_64.tar.gz"
      sha256 "047f3e186c6b4fe9dc655f2afa1a9aaf09e4d61b6219221d492f6d35272a12b0"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0-stage/cloud-cli_1.4.0-stage_Linux_arm64.tar.gz"
      sha256 "18e86649bf3e7efbebec07c6f898afd0232099684a3e20a2ae0fa8eed8ec2b8b"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0-stage/cloud-cli_1.4.0-stage_Linux_x86_64.tar.gz"
      sha256 "efac62acaaecc66d8c0dda0f9e37bb189f6310ddc2b7da9132276cbcc1651126"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end