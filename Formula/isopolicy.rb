# SPDX-License-Identifier: Apache-2.0
# Copyright Isovalent, Inc

# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "5b428ab7603d4c77f5e446f7b1aafe39b2438adc21e3289603a7b6acae71d092"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "0c5667c9e82f12cde3472f487de704b5caf0fd7a46992787b8e919d830c9ba45"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "3ae5b735d575685c5c0162b52ecc1d0f1ceaf4565360013025f983952c09699d"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "6217ad3df2575e87a0c21dbbd4990928ac553fc0c14ecdbfee23c7627698fe58"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
