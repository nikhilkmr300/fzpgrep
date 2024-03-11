class Fzpgrep < Formula
  include Language::Python::Virtualenv

  desc "A fuzzy version of pgrep"
  homepage "https://github.com/nikhilkmr300/fzpgrep"
  url "https://github.com/nikhilkmr300/fzpgrep/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "0dc6cbf75ac9842ab25c4b5fa54a1d13473ba208d4610d2825e1216a24375ddb"

  depends_on "python@3.11"

  def install
    bin.install "src/fzpgrep"
  end

  test do
    assert_match "fzpgrep", shell_output("#{bin}/fzpgrep --help")
  end
end
