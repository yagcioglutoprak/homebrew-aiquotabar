class Aiquotabar < Formula
  desc "Live Claude, ChatGPT, Cursor and Copilot usage limits in the macOS menu bar"
  homepage "https://github.com/yagcioglutoprak/AIQuotaBar"
  url "https://github.com/yagcioglutoprak/AIQuotaBar/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "ad44ad4d8315d6d4747c5d8c5ea68ba602853ed6241227a4354d8329d227fab5"
  license "MIT"
  revision 3
  head "https://github.com/yagcioglutoprak/AIQuotaBar.git", branch: "main"

  option "with-system-rust", "Build the launcher with the existing compiler specified by RUSTC"

  depends_on macos: :sonoma
  depends_on "python@3.12"
  depends_on "rust" => :build unless build.with?("system-rust")

  on_intel do
    depends_on macos: :sequoia
  end

  resource "app-icon" do
    url "https://raw.githubusercontent.com/yagcioglutoprak/AIQuotaBar/f91aeb3d68b0c762c87bc4bffaeeb2669508136f/assets/logo.png"
    sha256 "625d9836a37f28eff5eda50443bc81ee67feb010cc7bd688b44b003a3f893523"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  # Wheels, not the sdist: the 0.14.0 sdist hard-codes a GitHub Actions path
  # (/Users/runner/work/_temp) for libcurl-impersonate, so it cannot build on a Mac.
  resource "curl-cffi" do
    on_arm do
      url "https://files.pythonhosted.org/packages/aa/f0/0f21e9688eaac85e705537b3a87a5588d0cefb2f09d83e83e0e8be93aa99/curl_cffi-0.14.0-cp39-abi3-macosx_14_0_arm64.whl"
      sha256 "e35e89c6a69872f9749d6d5fda642ed4fc159619329e99d577d0104c9aad5893"
    end
    on_intel do
      url "https://files.pythonhosted.org/packages/ba/a3/0419bd48fce5b145cb6a2344c6ac17efa588f5b0061f212c88e0723da026/curl_cffi-0.14.0-cp39-abi3-macosx_15_0_x86_64.whl"
      sha256 "5945478cd28ad7dfb5c54473bcfb6743ee1d66554d57951fdf8fc0e7d8cf4e45"
    end
  end

  resource "lz4" do
    url "https://files.pythonhosted.org/packages/57/51/f1b86d93029f418033dddf9b9f79c8d2641e7454080478ee2aab5123173e/lz4-4.4.5.tar.gz"
    sha256 "5f0b9e53c1e82e88c10d7c180069363980136b9d7a8306c4dca4f760d60c39f0"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pycryptodomex" do
    url "https://files.pythonhosted.org/packages/c9/85/e24bf90972a30b0fcd16c73009add1d7d7cd9140c2498a68252028899e41/pycryptodomex-3.23.0.tar.gz"
    sha256 "71909758f010c82bc99b0abf4ea12012c98962fbf0583c2164f8b84533c2e4da"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/64/5a/6b15e499de73050f4a2c88fff664ae154307d25dc04da8fb38998a428358/pyobjc_core-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "818bcc6723561f207e5b5453efe9703f34bc8781d11ce9b8be286bb415eb4962"
  end

  resource "pyobjc-framework-cocoa" do
    url "https://files.pythonhosted.org/packages/95/bf/ee4f27ec3920d5c6fc63c63e797c5b2cc4e20fe439217085d01ea5b63856/pyobjc_framework_cocoa-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "547c182837214b7ec4796dac5aee3aa25abc665757b75d7f44f83c994bcb0858"
  end

  resource "pyobjc-framework-webkit" do
    url "https://files.pythonhosted.org/packages/db/67/64920c8d201a7fc27962f467c636c4e763b43845baba2e091a50a97a5d52/pyobjc_framework_webkit-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "af2c7197447638b92aafbe4847c063b6dd5e1ed83b44d3ce7e71e4c9b042ab5a"
  end

  resource "browser-cookie3" do
    url "https://files.pythonhosted.org/packages/e0/e1/652adea0ce25948e613ef78294c8ceaf4b32844aae00680d3a1712dde444/browser_cookie3-0.20.1.tar.gz"
    sha256 "6d8d0744bf42a5327c951bdbcf77741db3455b8b4e840e18bab266d598368a12"
  end

  resource "rumps" do
    url "https://files.pythonhosted.org/packages/b2/e2/2e6a47951290bd1a2831dcc50aec4b25d104c0cf00e8b7868cbd29cf3bfe/rumps-0.4.0.tar.gz"
    sha256 "17fb33c21b54b1e25db0d71d1d793dc19dc3c0b7d8c79dc6d833d0cffc8b1596"
  end

  def install
    venv = libexec/"venv"
    system "python3.12", "-m", "venv", venv

    # pyobjc-core tries to read $HOME during build; point it at a writable dir
    ENV["HOME"] = buildpath

    resources.each do |r|
      next if r.name == "app-icon"

      if r.url.end_with?(".whl")
        # pip only accepts a wheel under its real file name.
        wheel = buildpath/File.basename(r.url)
        # Homebrew fetches resources before entering its network-restricted build.
        # Reuse and verify that artifact instead of fetching it again here.
        r.verify_download_integrity(r.cached_download)
        cp r.cached_download, wheel
        system venv/"bin/pip", "install", "--no-deps", wheel
        next
      end
      r.stage do
        system venv/"bin/pip", "install", "--no-deps", "."
      end
    end

    libexec.install "claude_bar.py", "aiquotabar"
    (libexec/"assets").install Dir["assets/*"]

    # Fix rumps notification crash (requires CFBundleIdentifier in Info.plist)
    plist_path = venv/"bin/Info.plist"
    unless plist_path.exist?
      system "/usr/libexec/PlistBuddy", "-c",
             "Add :CFBundleIdentifier string rumps", plist_path.to_s
    end

    (bin/"aiquotabar").write <<~SH
      #!/bin/bash
      exec "#{venv}/bin/python" "#{libexec}/claude_bar.py" "$@"
    SH
    chmod 0755, bin/"aiquotabar"

    # Keep the GUI process inside its own macOS bundle instead of exec'ing Python.
    app = prefix/"AIQuotaBar.app"
    contents = app/"Contents"
    (contents/"MacOS").mkpath
    (contents/"Resources").mkpath
    (buildpath/"launcher.rs").write <<~RUST
      use std::{env, ffi::CString, os::raw::{c_char, c_int}, os::unix::ffi::OsStrExt};

      unsafe extern "C" {
          fn Py_BytesMain(argc: c_int, argv: *mut *mut c_char) -> c_int;
      }

      fn main() {
          let mut args = vec![
              CString::new("#{opt_libexec}/venv/bin/python").unwrap(),
              CString::new("#{opt_libexec}/claude_bar.py").unwrap(),
          ];
          for arg in env::args_os().skip(1) {
              let Ok(arg) = CString::new(arg.as_bytes()) else { std::process::exit(2) };
              args.push(arg);
          }
          let mut argv: Vec<*mut c_char> = args.iter().map(|a| a.as_ptr().cast_mut()).collect();
          let argc = argv.len() as c_int;
          argv.push(std::ptr::null_mut());
          let status = unsafe { Py_BytesMain(argc, argv.as_mut_ptr()) };
          std::process::exit(status);
      }
    RUST
    python_framework = Formula["python@3.12"].opt_frameworks/"Python.framework/Versions/3.12/Python"
    rustc = build.with?("system-rust") ? ENV.fetch("RUSTC") : "rustc"
    system rustc, "--edition=2024", "-C", "opt-level=s", "-C", "strip=symbols",
           "-C", "link-arg=#{python_framework}", "launcher.rs",
           "-o", contents/"MacOS/AIQuotaBar"
    (contents/"Info.plist").write <<~XML
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0"><dict>
        <key>CFBundleName</key><string>AIQuotaBar</string>
        <key>CFBundleDisplayName</key><string>AIQuotaBar</string>
        <key>CFBundleIdentifier</key><string>com.yagcioglutoprak.aiquotabar</string>
        <key>CFBundleExecutable</key><string>AIQuotaBar</string>
        <key>CFBundlePackageType</key><string>APPL</string>
        <key>CFBundleShortVersionString</key><string>#{version}</string>
        <key>CFBundleVersion</key><string>#{revision}</string>
        <key>LSMinimumSystemVersion</key><string>#{MacOSVersion.new(:sonoma)}</string>
        <key>LSUIElement</key><true/>
        <key>NSHighResolutionCapable</key><true/>
        <key>CFBundleIconFile</key><string>AIQuotaBar.icns</string>
      </dict></plist>
    XML
    iconset = buildpath/"AIQuotaBar.iconset"
    iconset.mkpath
    icon = resource("app-icon")
    icon.verify_download_integrity(icon.cached_download)
    icon_source = buildpath/"logo.png"
    cp icon.cached_download, icon_source
    [16, 32, 128, 256, 512].each do |size|
      [1, 2].each do |scale|
        suffix = scale == 2 ? "@2x" : ""
        system "/usr/bin/sips", "-z", (size * scale).to_s, (size * scale).to_s,
               icon_source, "--out", iconset/"icon_#{size}x#{size}#{suffix}.png"
      end
    end
    system "/usr/bin/iconutil", "-c", "icns", iconset, "-o", contents/"Resources/AIQuotaBar.icns"
    system "/usr/bin/codesign", "--force", "--sign", "-", app
  end

  def caveats
    <<~EOS
      AIQuotaBar is a macOS menu bar app. Launch it with:
        aiquotabar &

      To install the Applications bundle, install this tap's aiquotabar-app cask.

      To run it at login, click the ◆ icon in your menu bar → Launch at Login.

      Logs are written to: ~/.claude_bar.log
    EOS
  end

  test do
    # The test sandbox cannot write __pycache__ into the Cellar.
    ENV["PYTHONPYCACHEPREFIX"] = testpath/"pycache"
    system "#{libexec}/venv/bin/python", "-m", "py_compile", "#{libexec}/claude_bar.py"
    assert_match "AIQuotaBar", shell_output("#{bin}/aiquotabar --version")
  end
end
