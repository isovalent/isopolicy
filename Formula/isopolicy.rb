# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "df1a98665057a1417f5fc7a335d2d586b10e75695a5f4632436054574e3a43aa"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "3a541b6b8eac43411888402f94e189db26387df24aad50540f90659b1bd8fbe0"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "3073eeac577e383ac855dcc778b6cae5c34e74116ca4fd58e5be8b921f38d35d"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "b525b97ad7d2033d94376dc26fea0c59da01bebb3482c240950afb98e3bbe860"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
