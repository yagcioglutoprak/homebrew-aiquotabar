# AIQuotaBar Homebrew packages

To install AIQuotaBar in Applications and find it with Spotlight:

```sh
brew tap yagcioglutoprak/aiquotabar
brew install --cask yagcioglutoprak/aiquotabar/aiquotabar-app
```

The cask installs `AIQuotaBar.app` and depends on the `aiquotabar` formula, which manages Python and the app's dependencies. The app has a native launcher that runs the Python framework inside the bundle's process, preserving its macOS bundle identity. It is a menu-bar app, so it does not keep a Dock icon. The existing `aiquotabar` Terminal command also remains available.

The bundle is built locally and ad-hoc signed, not a standalone Developer ID signed/notarized release. Runtime files remain managed by Homebrew. Removing the cask preserves account settings and usage history; it does not remove the runtime formula automatically. Do not use `--zap` to remove private settings unless you intend to delete them.

To remove the Applications entry:

```sh
brew uninstall --cask yagcioglutoprak/aiquotabar/aiquotabar-app
```

The formula uses the publisher's checksum-verified Python 3.12 universal PyObjC wheels and the native build cache for wheel resources. Rust is a build dependency for the small native launcher; it is not needed by the running app. If you already have a compatible stable Rust compiler, install the formula first with `brew install --with-system-rust yagcioglutoprak/aiquotabar/aiquotabar` to reuse it before installing the cask.

Packaging status is recorded in [PROGRESS.md](PROGRESS.md), with maintenance notes in [docs/HANDOFF.md](docs/HANDOFF.md).
