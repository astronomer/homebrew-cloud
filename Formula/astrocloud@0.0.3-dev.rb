# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstrocloudAT0_0_3Dev < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.0.3-dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.3-dev/cloud-cli_0.0.3-dev_Darwin_arm64.tar.gz"
      sha256 "858bcdc2361deb70fae04958ecf76fbf7fd414073bbc33917fd7ca26c3fca973"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.3-dev/cloud-cli_0.0.3-dev_Darwin_x86_64.tar.gz"
      sha256 "abcf78d7895af8542f51aa99bff9b333c421883bc8ac1367ca1402719bb517ba"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.3-dev/cloud-cli_0.0.3-dev_Linux_arm64.tar.gz"
      sha256 "273ac0cfe6f7bff52a918bda7f2ef97be38f877482623c1d812cfe41fd281a15"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v0.0.3-dev/cloud-cli_0.0.3-dev_Linux_x86_64.tar.gz"
      sha256 "f4f58c15ca198860240ca8f436646d15deb511862d956184c3af0592e02cc4de"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
