# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT001Dev < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.0.1-dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.1-dev/cloud-cli_0.0.1-dev_Darwin_arm64.tar.gz"
      sha256 "ffc75fe36759a88a19bb85ad7b17eaad95e2855a6c12991f3a5a6483dbca7fa6"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.1-dev/cloud-cli_0.0.1-dev_Darwin_x86_64.tar.gz"
      sha256 "a80b2bd15e3f19b9de14bea5e50a2613567d36a31f679e5f687d0490fa6d09fa"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.1-dev/cloud-cli_0.0.1-dev_Linux_arm64.tar.gz"
      sha256 "49356478a4c56f3b0be7ea5a9b71564faa64d179f1a37749354dba532926962f"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.1-dev/cloud-cli_0.0.1-dev_Linux_x86_64.tar.gz"
      sha256 "fef6974a6d0a90202c4316394a77fe27dd023f160ad90f43fcb175f3e5c4e795"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end