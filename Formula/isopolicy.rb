# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version ""

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "5f6fc9998097d6ecccf1390382dc1f138b7be420b509ca58d6d1d673d8047ec4"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "cebcc8a9c929af1e140a9e730a82cf2672d84c64b99471e8f0e573efe073e530"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "c63d7094be09654867e929aac8d902494b5ab8b7cce89c0a62a864b55351096f"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "d6369128f8ba3831cb96cd1d66d2210a283662835082fbe17857e78389608d0d"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
