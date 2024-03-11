class Fzpgrep < Formula
  include Language::Python::Virtualenv

  desc "A fuzzy version of pgrep"
  homepage "https://github.com/nikhilkmr300/fzpgrep"
  url "https://github.com/nikhilkmr300/fzpgrep/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "cacca0daf3d057e241c636fdbf454acab3b7e91ec529096eb9acfbc8efe24866"

  depends_on "python@3.11"

  def install
    bin.install "src/fzpgrep"
  end

  test do
    assert_match "fzpgrep", shell_output("#{bin}/fzpgrep --help")
  end
end
