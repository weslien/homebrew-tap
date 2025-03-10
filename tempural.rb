# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tempural < Formula
  desc "CLI for temporal stuff"
  homepage "https://github.com/weslien/tempural"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weslien/tempural/releases/download/v0.0.5/tempural_0.0.5_darwin_amd64.tar.gz"
      sha256 "e53e565cd3047f66433c2302c64e3755f57b45fa44f37ddca2eb683c1d89005e"

      def install
        bin.install "tempural"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weslien/tempural/releases/download/v0.0.5/tempural_0.0.5_darwin_arm64.tar.gz"
      sha256 "4cba309d44d1cbbba71352d8fe720332bc01066eef8310296ac7d82e06673db7"

      def install
        bin.install "tempural"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weslien/tempural/releases/download/v0.0.5/tempural_0.0.5_linux_amd64.tar.gz"
        sha256 "4dc8718153abdc492e9cc30696a3024563fac404b1feafcc0ef3dcf491ef3660"

        def install
          bin.install "tempural"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weslien/tempural/releases/download/v0.0.5/tempural_0.0.5_linux_arm64.tar.gz"
        sha256 "b581ccb9d4477cd0c3cdebc581a216c740a87f703f7ec6927a689d17c7e3a3a7"

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
