# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "78ae36095c395606513049dad4c92265453b8964b93f22c415a0c7d6486fde03"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "7ee8958b14304a9e44fd6a047fb5aece8a3c524dc8289f5a0a6ac83a43497f4d"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "aaac1541a55cbc0a9e0cfb5999d6aee58d2486a1bbb26737c81dd60f88466c24"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "8f30db85ea54695756151192d1b6b54c31409e5847e1063e4bc5f29a3f94d4e4"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
