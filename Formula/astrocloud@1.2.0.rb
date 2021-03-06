# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT120 < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.2.0/cloud-cli_1.2.0_Darwin_arm64.tar.gz"
      sha256 "0d392682fe85e2f0dae83374b949a612f00895b751e719f4e31d53bcdf865171"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.2.0/cloud-cli_1.2.0_Darwin_x86_64.tar.gz"
      sha256 "03aeb35ecd828c94e48ed20044d68fea5ea42c9371766d5b838fec402244d9f9"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.2.0/cloud-cli_1.2.0_Linux_arm64.tar.gz"
      sha256 "6d3b0b860239fbd2074f8ac866a9e1f3cff13eec643efaad1f34cb3d42fee45c"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.2.0/cloud-cli_1.2.0_Linux_x86_64.tar.gz"
      sha256 "318c267aa1f3c0f12ec00013adfa1297f71c6f477d1b5e7ee3c101fa1519f347"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
