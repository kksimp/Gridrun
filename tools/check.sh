#!/usr/bin/env bash
# Checks gridrun against the pinned AIL (see .ail-version). Run on a dev machine, never in a container.
# Expects the ail repository at ../ail (or AIL_DIR) checked out at the pinned commit.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ail_dir="${AIL_DIR:-$here/../ail}"
want="$(head -n 1 "$here/.ail-version")"
have="$(git -C "$ail_dir" rev-parse HEAD)"
[ "$have" = "$want" ] || { echo "check: $ail_dir is at $have, pinned $want" >&2; exit 2; }
cd "$here"
"$ail_dir/ail" check src
"$ail_dir/ail" fmt --check src
for t in tests/*_test.ail; do
    "$ail_dir/ail" check "$t"
    "$ail_dir/ail" fmt --check "$t"
    "$ail_dir/ail" test "$t"
done
echo "check: ok"
