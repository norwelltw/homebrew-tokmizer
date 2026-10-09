class Tokmizer < Formula
  desc "Cuts the tokens your AI coding agent burns on command output"
  homepage "https://tokmizer.com"
  url "https://registry.npmjs.org/@tokmizer/plugin/-/plugin-0.9.36.tgz"
  sha256 "ac776d602ef64f6952462519155288da49aa7851f72e1710db8e0b89dd9cd9c8"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Usage: tkr", shell_output("#{bin}/tkr help")
  end
end
