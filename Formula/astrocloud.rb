# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astrocloud < Formula
  desc "To build and run Airflow DAGs locally, deploy DAGs to the Astronomer Cloud and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0/cloud-cli_1.4.0_Darwin_arm64.tar.gz"
      sha256 "82515ee6b57059861bb28e83ab6d8c036d0987cd938e99b181f6aff3a3927310"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0/cloud-cli_1.4.0_Darwin_x86_64.tar.gz"
      sha256 "15e7ab9251eccff6244fc436f952e03c35277f17a2a017001e22038256153313"

      def install
        bin.install "astrocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0/cloud-cli_1.4.0_Linux_arm64.tar.gz"
      sha256 "992911e2a974744e0c6911108d765438a876335d40cd644e1ec18307dcbfa8d4"

      def install
        bin.install "astrocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://goreleaserdev.blob.core.windows.net/goreleaser-test-container/releases/v1.4.0/cloud-cli_1.4.0_Linux_x86_64.tar.gz"
      sha256 "f8e761a434f1d3ae7d8d93d27dd3ed91a516dc5cde15862c3c8b35aaaff5b29c"

      def install
        bin.install "astrocloud"
      end
    end
  end

  test do
    system "#{bin}/astrocloud version"
  end
end
