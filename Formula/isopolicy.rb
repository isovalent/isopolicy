# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "0f1f644612ec09942092a6835a50da058c8380ec16b08cbebbe1922081badbe2"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "0487e5fb80cefc6a29792639ab4878ef32b4d1a7af3e369898e299a7a30f7fc5"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "edb2b445de335dc09daadc16cbb4ba0fe475c574213cc68ceed655ca5ad7719c"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "ce335d212f673bb2f7d63f588cb29ec0b4c733417923ea3e16f45579ce9041be"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
