@echo off
rem	windows-64,windows-32,linux-64,linux-32,linux-arm32,linux-arm64,macosx-32,macosx-64
for %%A in (windows-64,windows-32,linux-64,linux-32) do (
  if not exist build\%%A (
    mkdir build\%%A
    meson --cross-file toolchains\%%A.txt build\%%A
  )
  ninja -v -C build/%%A
)
