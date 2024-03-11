class Fzpgrep < Formula
  include Language::Python::Virtualenv

  desc "A fuzzy version of pgrep"
  homepage "https://github.com/nikhilkmr300/fzpgrep"
  url "https://github.com/nikhilkmr300/fzpgrep/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "740dff128537172e5926f6075921eaa06f054e48be0fb831df0c7acf0e24a250"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
    bin.install "src/fzpgrep"
  end

  test do
    assert_match "fzpgrep", shell_output("#{bin}/fzpgrep --help")
  end
end
