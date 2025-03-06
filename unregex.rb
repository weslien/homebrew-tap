# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Unregex < Formula
  desc "A tool to visualize and explain regular expressions"
  homepage "https://github.com/weslien/unregex"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weslien/unregex/releases/download/v0.2.0/unregex_0.2.0_darwin_amd64.tar.gz"
      sha256 "a5b70d462a690c9e3308f35c7fcfec8fa191403bab8aa2229e229669777cfe7a"

      def install
        bin.install "unregex"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weslien/unregex/releases/download/v0.2.0/unregex_0.2.0_darwin_arm64.tar.gz"
      sha256 "2c9817fb170b776eee442b448467923a0d126aeffa07d8edaa1369728d6bdf64"

      def install
        bin.install "unregex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weslien/unregex/releases/download/v0.2.0/unregex_0.2.0_linux_amd64.tar.gz"
        sha256 "4e4b9316877f15d44047cbdbc5c7202a45eb04ccaaa10530e4cac5c739ae4f24"

        def install
          bin.install "unregex"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weslien/unregex/releases/download/v0.2.0/unregex_0.2.0_linux_arm64.tar.gz"
        sha256 "f1e39058da072cbe67312d515f489288fffab53434ae96561e308aa819a5ca3f"

        def install
          bin.install "unregex"
        end
      end
    end
  end

  test do
    system "#{bin}/unregex", "-version"
  end
end
