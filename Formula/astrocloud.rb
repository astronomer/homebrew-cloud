# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astrocloud < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.1/cloud-cli_1.5.1_Darwin_arm64.tar.gz"
      sha256 "e57dc09750d64e31644df9d6730a9104fd010a505cbc5bb678b0d883cb0dbf6c"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.1/cloud-cli_1.5.1_Darwin_x86_64.tar.gz"
      sha256 "fdd9892b5aa5b9c5df93e48dfad1c03b612560b66dd6b46cbaa8ac27ebd19fdf"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.1/cloud-cli_1.5.1_Linux_arm64.tar.gz"
      sha256 "aaa047dbe1d7bce112864250c915600be68a7fcdd3deadf387d2788fbdbf436e"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.5.1/cloud-cli_1.5.1_Linux_x86_64.tar.gz"
      sha256 "b46b0a6f0d920a4c894714ddcd5d51118e2125096937f5708ef80bc190b3f323"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
