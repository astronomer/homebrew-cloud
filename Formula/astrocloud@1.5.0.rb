# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT150 < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.0/cloud-cli_1.5.0_Darwin_arm64.tar.gz"
      sha256 "3382fb74b477313b6731fb1aa103c6dd8cb53c368b0423897aa6c0559440c496"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.0/cloud-cli_1.5.0_Darwin_x86_64.tar.gz"
      sha256 "f6142e452965424305323eb3805493a97fd3257b71f8d3751be79e57f1993995"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.0/cloud-cli_1.5.0_Linux_arm64.tar.gz"
      sha256 "1b214a48269b085091c5878f01d997e9fa255b9c342a230ecede51c1e2f3e8d1"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.0/cloud-cli_1.5.0_Linux_x86_64.tar.gz"
      sha256 "f86659afb46b701dd82ba4bbf73c05f94aecd54ecf08c14625f1064175b714a5"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
