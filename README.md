# CUE Homebrew tap (retired)

This tap is no longer updated. CUE is available from Homebrew's own
formula:

```
brew install cue
```

If you installed `cue` from this tap, `brew update` moves it to
Homebrew's formula automatically. If it did not, reinstall it:

```
brew uninstall cue && brew install cue
```

`cue-prerelease` is deprecated and will be removed. Until then it
installs the latest release. Replace it with Homebrew's `cue` formula:

```
brew uninstall cue-prerelease && brew reinstall cue
```

Pre-releases remain available with `go install
cuelang.org/go/cmd/cue@<version>`, from the archives on
[GitHub releases](https://github.com/cue-lang/cue/releases), and as
[`cuelang/cue` Docker images](https://hub.docker.com/r/cuelang/cue)
tagged with their version. Homebrew's formula does not offer them, but
`brew install --HEAD cue` builds the latest development version.

Once `cue` comes from Homebrew's formula, this tap can be removed with
`brew untap cue-lang/tap`.
