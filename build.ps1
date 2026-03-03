cargo build --release
if (Test-Path ./build) {
    Remove-Item -Path ./build/* -Recurse
} else {
    New-Item -Path ./build -ItemType directory > $null
}
if (Test-Path ./dist) {
    Remove-Item -Path ./dist/* -Recurse
} else {
    New-Item -Path ./dist -ItemType directory > $null
}
Copy-Item -Path ./target/release/tabletdrivercleanup.exe -Destination ./build
Copy-Item -Path ./eng/dump.bat -Destination ./build
Copy-Item -Path ./eng/dry_run.bat -Destination ./build
Copy-Item -Path ./eng/no_prompt_uninstall.bat -Destination ./build
Copy-Item -Path ./eng/internal_config_only.bat -Destination ./build
Compress-Archive -Force ./build/* ./dist/tabletdrivercleanup.zip
