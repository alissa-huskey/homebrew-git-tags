class GitTags < Formula
  include Language::Python::Virtualenv

  desc "A git extension to print a detailed list of tags."
  homepage "https://github.com/alissa-huskey/git-tags"
  url "https://github.com/alissa-huskey/git-tags/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8fd97a9f1bd49022375894e5de1d96294b191d2f2582884c1314dde6dfa23819"
  license "MIT"

  depends_on "python@3.8"

  resource "argparse-manpage" do
    url "https://files.pythonhosted.org/packages/fe/5d/b761efd95520e79c8d6376d4088be6d69ca56eac6e410b140a05d35f5684/argparse-manpage-1.5.tar.gz"
    sha256 "0caa9d7a175f4c76853756814facc017d99d1ca3493b8982911aed82747c73f8"
  end

  resource "more-itertools" do
  url "https://github.com/alissa-huskey/git-tags/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "83f0308e05477c68f56ea3a888172c78ed5d5b3c282addb67508e7ba6c8f813a"
  end



  def install
    virtualenv_install_with_resources
    man1.install "git-tags.1"
  end

  test do
    system "#{bin}/git-tags", "--version"
  end
end
