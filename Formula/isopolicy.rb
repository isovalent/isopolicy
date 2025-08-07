# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "b9caf6893b29feaa3a41918763f43a276da9888cf47ba3caca56e5368e21d84b"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "47591b98b256717b9fe16d3b7af45bbdeb371f1f0f6f757bfa2941665c636602"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "a6f23bfa7f072ce4f12cb1abc4949dc4be451cb9d8fbd09be48c823dca154692"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/releases/download/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "a2614989318285ce17223d65192e3cd4c9bd32bb2468d3af6618a4682b40e5c1"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
