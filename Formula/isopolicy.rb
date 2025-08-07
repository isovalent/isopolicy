# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "020acf532969c666c616772280f2132500ab1816a963c87d052bced2ab5f27ac"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "94f0fab7f2977ba1473867db8e680dfde7b4e3c04f0e4ef9e337d26fbe0489b4"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "3df14d2bfbbbb5fe73931f869323cf7f89eb39e4626aaecf392dc303bb702155"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "e75aefb18b6fb4f5141c790a29fbf52196402bf8a072ec37026a75250af62230"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
