# This file was generated. DO NOT EDIT.

class Isopolicy < Formula
  desc "Isovalent Network Policy Recommendations"
  version "v0.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_amd64.tar.gz"
      sha256 "acf784020b94b11a487989f448b8e1d202535a7bce43845df11674676457ba29"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_darwin_arm64.tar.gz"
      sha256 "225d523821af597a29338ca94db46a3bdd8b64592e23e3db40cc8dc9161e03be"
      def install
        bin.install "isopolicy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_amd64.tar.gz"
      sha256 "c952dadd0be7d60ae5c5a06115889a0b7cf826b15936da487d322b501da42cd3"
      def install
        bin.install "isopolicy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/isovalent/isopolicy/raw/refs/heads/main/downloads/" + version + "/isopolicy_linux_arm64.tar.gz"
      sha256 "cf3840c281be2e8448043fcee26f0a666c39e41db558aab282de6c690fd45f51"
      def install
        bin.install "isopolicy"
      end
    end
  end

  test do
    system "isopolicy version"
  end
end
