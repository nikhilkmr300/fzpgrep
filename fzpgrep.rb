class Fzpgrep < Formula
  include Language::Python::Virtualenv

  desc "A fuzzy version of pgrep"
  homepage "https://github.com/nikhilkmr300/fzpgrep"
  url "https://github.com/nikhilkmr300/fzpgrep/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "881f4f233d10a9d072770073dba7a89f27c94d8cbe2df805ad005da06e91d581"

  depends_on "python@3.11"

  def install
    bin.install "src/fzpgrep"
  end

  test do
    assert_match "fzpgrep", shell_output("#{bin}/fzpgrep --help")
  end
end
