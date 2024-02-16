

Write-Host "Building with rust channel : $env:rust_channel"

if ($env:rust_channel -eq "nighly") {
    $build_channel = "+nightly"
}

cargo $build_channel build  --verbose --release