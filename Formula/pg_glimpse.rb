class PgGlimpse < Formula
  desc "Terminal-based PostgreSQL monitoring tool with live TUI"
  homepage "https://github.com/dlt/pg_glimpse"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/dlt/pg_glimpse/releases/download/v#{version}/pg_glimpse-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "432820989ed4f7e707e265d7cf5986b1af863ca534b11051c9b7eadaa368bb5f"
    end

    on_intel do
      url "https://github.com/dlt/pg_glimpse/releases/download/v#{version}/pg_glimpse-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5509932b2a326b25e7c245ac462797314be20c44b5d07d7ef2af9538f08342fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dlt/pg_glimpse/releases/download/v#{version}/pg_glimpse-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32e703a67fced5c8e86c0ebed93544a4499e4bc52b4b4641c543f967f772b2fd"
    end

    on_intel do
      url "https://github.com/dlt/pg_glimpse/releases/download/v#{version}/pg_glimpse-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01cd4b7e4a30145069f930588408f6b6fd4cd58116b6fccc4d85aaa561f70e5d"
    end
  end

  def install
    bin.install "pg_glimpse"
  end

  test do
    assert_match "pg_glimpse", shell_output("#{bin}/pg_glimpse --version")
  end
end
