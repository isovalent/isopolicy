# SPDX-License-Identifier: Apache-2.0
# Copyright Isovalent, Inc

# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.20.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "d3651e43793f6474bf6f6ad446c82aded75ffe99f4a3e4d91dd91de241c72956"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "308d8463f4acf38f70162cda85abb13b5130583bce9dd4b32c28d65791fc657f"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "ba1c5843efefe2379f074a970690ebad80a895d4a8666542df75307f03ab3f83"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "34cc6bfcfc8547ff44a5686857cd445dc815c96389ae321948dcd4484f0e48e3"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
