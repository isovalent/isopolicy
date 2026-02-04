# SPDX-License-Identifier: Apache-2.0
# Copyright Isovalent, Inc

# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.20.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "0f08a58658c0d8a9cbc7c8349efcb857ff16272acdad9e42be51b2cf11776180"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "8b583920e1c03ee0c0517ecf512405cafafde2681f94acbbd47633e685e158ce"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "f9f5c29922ce62368768aad27b3994048c087a6be4703e7de7d8ab2f52056098"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "4037b5cee43d0c259e5eef6a4d4b99c47de24adf86ab4c2cf2faa42eb2619c5f"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
