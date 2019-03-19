class MacosTools < Formula
  desc "Simple command-line utilities only usable on macOS"
  homepage "https://github.com/splo/macos-tools"
  url "https://github.com/splo/macos-tools/archive/v1.0.0.tar.gz"
  sha256 "3cc60f7ddf5b8eec83842c93d8c72f8e657a18a423bcdd2dbf6142c1dabb7590"
  head "https://github.com/splo/macos-tools.git"

  def install
    if (/darwin/ =~ RUBY_PLATFORM).nil?
      raise "Expected a macOS OS"
    end

    bin.install "bin/bluetooth-ctl"
    bin.install "bin/delete-dsstores"
    bin.install "bin/flush-cache"
  end

  test do
    assert_match "/usr/local/bin/bluetooth-ctl", shell_output("which bluetooth-ctl")
    assert_match "/usr/local/bin/delete-dsstores", shell_output("which delete-dsstores")
    assert_match "/usr/local/bin/flush-cache", shell_output("which flush-cache")
  end
end
