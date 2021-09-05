# Racket Issue 3969

This repository reproduces <https://github.com/racket/racket/issues/3969>
without Guix.

To run:

 1. Put an in-place minimal Racket 8.2 installation in a `racket/`
    subdirectory of your checkout, perhaps by unpacking the appropriate tarball
    from <https://download.racket-lang.org/releases/8.2/>.

 2. Create `/tmp/racket-issue-3969` as a symlink to your checkout directory.

 3. Run `make`.

The script will set up a config-tethered layer in `layer/` (chaining to `racket/`),
then demonstrate some commands.
Observe that `layer/bin/racket` is a starter executable and produces
inconsistent results from `(system-type 'gc)` and `(variant-suffix 'cs #f)`
compared to `racket/bin/racket`.
