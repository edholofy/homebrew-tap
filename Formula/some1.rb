class Some1 < Formula
  desc "Autonomous AI Employees That Never Sleep"
  homepage "https://github.com/edholofy/some1-cli"
  url "https://files.pythonhosted.org/packages/source/s/some1/some1-0.4.2.tar.gz"
  sha256 "37d1b81f6bee4f61f3b0c938f56e6a14429711472ef7c3e43655cab76689df12"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
  end

  test do
    system "false"
  end
end
