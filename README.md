# Coder 👨‍🚀

Setup on Ubuntu (w/Docker, Docker Compose)

## How to use

```bash
$ git clone https://github.com/omaucf/coder.git
```

1. **Config** `config/setting.sh`

```diff
environment:
-   GIT_NAME=""
-   GIT_EMAIL=""
+   GIT_NAME="omaucf"
+   GIT_EMAIL="omaucf@pm.me"
```

2. **Compose** `compose.yml`

```diff
environment:
-   - PASSWORD=password
+   - PASSWORD=new-password
-   - SUDO_PASSWORD=sudopassword
+   - SUDO-PASSWORD=new-sudopassword
```

3. **Build**

```bash
$ docker compose up -d --build
```

4. **Run**

```bash
$ chmod 755 /config/setting.sh
$ sh /config/setting.sh
```

## License

See [LICENSE](./LICENSE.md) for more information.