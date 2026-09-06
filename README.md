# kapoorsunny/tap

A [Homebrew tap](https://docs.brew.sh/Taps) for utility formulas by
[@kapoorsunny](https://github.com/kapoorsunny).

## Install

```bash
brew tap kapoorsunny/tap
brew trust kapoorsunny/tap   # one-time approval; non-interactive, safe in scripts/CI
```

## Formulas

### keysec — a pocket secret vault for your Mac

A small CLI that stores, reads, updates, and rotates your secrets as simple
key–value pairs in the macOS Keychain. Nothing ever touches disk in plaintext;
git tokens live in the Keychain instead of a `git-credentials` file, and
rotators renew a secret automatically.

```bash
brew install keysec
```

[github.com/kapoorsunny/keysec](https://github.com/kapoorsunny/keysec)

### mcpw — CLI / web API → MCP

Turn any CLI tool or web API into an MCP server without writing code.

```bash
brew install mcpw
```

[github.com/kapoorsunny/AnythingMCP](https://github.com/kapoorsunny/AnythingMCP)

## Notes

- Formulas update automatically when a release is tagged in the source repo.
- For issues, open one in the formula's source repository.