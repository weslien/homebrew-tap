# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tempural < Formula
  desc "CLI for temporal stuff"
  homepage "https://github.com/weslien/tempural"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weslien/tempural/releases/download/v0.0.2/tempural_0.0.2_darwin_amd64.tar.gz"
      sha256 "6cac8ce2c7cc3f2aeca13aa1baadc8c07356f522b309df7acdf9031bc7a5f478"

      def install
        bin.install "tempural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weslien/tempural/releases/download/v0.0.2/tempural_0.0.2_darwin_arm64.tar.gz"
      sha256 "c7f450b5089d06d9fdcdbba7f1a3267bc329928e3f05279d1db677dc4e754cad"

      def install
        bin.install "tempural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weslien/tempural/releases/download/v0.0.2/tempural_0.0.2_linux_amd64.tar.gz"
        sha256 "b66cb467d1dac72e52ff7851325bf34027580fe592676fe271437eca100a3602"

        def install
          bin.install "tempural"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weslien/tempural/releases/download/v0.0.2/tempural_0.0.2_linux_arm64.tar.gz"
        sha256 "a1fae899413c91c8223bfe003bb62f7f87fb06f030842a47ffea587efba8dc17"

        def install
          bin.install "tempural"
        end
      end
    end
  end

  test do
    system "#{bin}/tempural", "-version"
  end
end
