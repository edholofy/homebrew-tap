class Some1 < Formula
  include Language::Python::Virtualenv

  desc "Autonomous AI Employees That Never Sleep"
  homepage "https://github.com/edholofy/some1-cli"
  url "https://files.pythonhosted.org/packages/source/s/some1/some1-0.4.4.tar.gz"
  sha256 "80cf303119b4bd63223c2fbb6ff73179dc29820657f37d11453a019654727671"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "SOME-1", shell_output("#{bin}/some1 --version 2>&1", 2)
  end
end
