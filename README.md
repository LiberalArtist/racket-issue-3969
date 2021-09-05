# Racket Issue 3969

This repository reproduces <https://github.com/racket/racket/issues/3969>
without Guix.

To run:

 1. Put an in-place minimal Racket 8.2 installation in the `racket/`
    directory, perhaps by unpacking the appropriate tarball from
    <https://download.racket-lang.org/releases/8.2/>.

 2. Run `make`. The script will set up a config-tethered layer in `layer/`
    chaining to `racket/`, then demonstrate some commands.
    Observe the inconsistent results from `(system-type 'gc)` and `(variant-suffix 'cs #f)`
