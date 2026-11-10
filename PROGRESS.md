# Applications package progress

The existing formula installs a command but no Applications bundle. This change adds a native macOS bundle and a companion cask while preserving the Python runtime and Terminal command. It also fixes reproducible build failures involving wheel downloads and PyObjC compilation against newer SDKs.

- [x] Implement the native launcher, bundle metadata, icon and ad-hoc signature.
- [x] Add a cask depending on the runtime formula and document installation/removal.
- [ ] Complete local package and bundle checks.
- [ ] Observe menu-bar GUI behavior; native automation access is unavailable in the current environment.

### **2026-11-10 12:54 -05:00 — Applications packaging implemented**

The Rust launcher calls the managed Python framework in-process rather than replacing its process with a Python executable. The cask copies the formula's bundle to Applications, and both launcher runtime paths use Homebrew's stable opt location. Local package installation is in progress; no native UI acceptance is claimed. See [maintenance notes](docs/HANDOFF.md).
