

Write-Host "Building with rust channel : $env:rust_channel"

$build_channel = ""
if ($env:rust_channel == "nighly") {
    $build_channel = "+nightly"
}

cargo $build_channel build --verbose --release