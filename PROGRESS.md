# Applications package progress

The existing formula installs a command but no Applications bundle. This change adds a native macOS bundle and a companion cask while preserving the Python runtime and Terminal command. It also fixes reproducible build failures involving wheel downloads and PyObjC compilation against newer SDKs.

- [x] Implement the native launcher, bundle metadata, icon and ad-hoc signature.
- [x] Add a cask depending on the runtime formula and document installation/removal.
- [x] Install the local runtime and cask; verify native launcher's version, signature, metadata and Spotlight indexing on Apple Silicon.
- [ ] Observe menu-bar GUI behavior; native automation access is unavailable in the current environment.

### **2026-11-10 13:15 -05:00 — Bundle installed and discoverable in Spotlight**

The formula and companion cask installed successfully on Apple Silicon macOS 27. The installed Mach-O launcher reports AIQuotaBar 2.0.0, the bundle passes signature and property-list checks, and Spotlight returns its Applications path with the expected bundle identifier. Reinstalling through declarative `preflight_steps` also succeeds without the legacy hook warnings. The local runtime has a separate authentication patch that is excluded from this contribution; the launcher and cask implementations are the same. No native menu interaction or Intel run is claimed.

### **2026-11-10 12:54 -05:00 — Applications packaging implemented**

The Rust launcher calls the managed Python framework in-process rather than replacing its process with a Python executable. The cask copies the formula's bundle to Applications, and both launcher runtime paths use Homebrew's stable opt location. Local package installation is in progress; no native UI acceptance is claimed. See [maintenance notes](docs/HANDOFF.md).
