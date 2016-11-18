@echo off

rem	native,windows-64,windows-32,linux-64,linux-32,linux-arm-32,linux-arm-64,macosx-32,macosx-64
for %%A in (native,windows-64,windows-32,linux-64,linux-32,linux-arm-32) do (
  if not exist build\%%A (
    mkdir build\%%A
    if %%A == native (
      meson build\%%A
    ) else (
      meson --cross-file toolchains\%%A.txt build\%%A
    )
  )
  ninja -C build/%%A
)
