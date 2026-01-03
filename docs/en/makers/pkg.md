# pkg

> You can only build the PKG target on macOS machines.

## Usage

Add `make_config.yaml` to your project `macos/packaging/pkg` directory.

```yaml
install_path: /Applications
sign_pkg_identity: <your-pkg-sign-identity>
sign_app_identity: <your-app-sign-identity>
```

Run:

```
fastforge package --platform macos --targets pkg
```

## Related Links

- [Build and release a macOS app](https://docs.flutter.dev/deployment/macos)
