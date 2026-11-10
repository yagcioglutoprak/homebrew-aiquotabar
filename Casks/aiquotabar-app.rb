cask "aiquotabar-app" do
  version "2.0.0,3"
  sha256 "ad44ad4d8315d6d4747c5d8c5ea68ba602853ed6241227a4354d8329d227fab5"

  url "https://github.com/yagcioglutoprak/AIQuotaBar/archive/refs/tags/v#{version.csv.first}.tar.gz"
  name "AIQuotaBar"
  desc "Applications launcher for the Homebrew-managed AI usage monitor"
  homepage "https://github.com/yagcioglutoprak/AIQuotaBar"

  depends_on formula: "yagcioglutoprak/aiquotabar/aiquotabar"
  depends_on macos: :sonoma

  app "AIQuotaBar.app"

  preflight_steps do
    # The formula builds the native bundle and manages its Python dependencies.
    # Use its stable opt path so formula upgrades do not break the launcher.
    copy "{{HOMEBREW_PREFIX}}/opt/aiquotabar/AIQuotaBar.app", "AIQuotaBar.app", recursive: true
  end

  caveats <<~EOS
    Launch AIQuotaBar from Applications or Spotlight.
    Its Python runtime is managed by the aiquotabar formula.
    Removing this cask preserves your account settings and usage history.
  EOS
end
