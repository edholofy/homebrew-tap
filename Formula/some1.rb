class Some1 < Formula
  desc "Autonomous AI Employees That Never Sleep"
  homepage "https://github.com/edholofy/some1-cli"
  url "https://files.pythonhosted.org/packages/source/s/some1/some1-0.4.4.tar.gz"
  sha256 "80cf303119b4bd63223c2fbb6ff73179dc29820657f37d11453a019654727671"
  license "MIT"

  depends_on "python@3.11"

  def install
    python = Formula["python@3.11"].opt_bin/"python3.11"
    venv = libexec/"venv"
    system python, "-m", "venv", venv
    venv_pip = venv/"bin/pip"
    system venv_pip, "install", "--upgrade", "pip"
    system venv_pip, "install", "some1==#{version}"
    
    (bin/"some1").write_env_script venv/"bin/some1", PATH: "#{venv}/bin:$PATH"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/some1 --version 2>&1", 2)
  end
end
