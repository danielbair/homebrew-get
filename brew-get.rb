class BrewGet < Formula
  desc "Attempt to use wget to retrieve home brew package files where curl fails"
  homepage "https://github.com/danielbair/homebrew-get"
  url "https://github.com/danielbair/homebrew-get.git", :tag => "v1.0.2" 

  head "https://github.com/danielbair/homebrew-get.git"

  def install
    bin.install "cmd/brew-get"
  end

    def caveats
        <<~EOS
          You can uninstall this formula, as `brew tap danielbair/get` is all that's
          needed to install brew-get and keep it up to date.
        EOS
    end

  test do
    system "brew", "get", "--help"
  end
end
