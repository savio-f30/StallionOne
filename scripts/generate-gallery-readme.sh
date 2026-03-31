#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GALLERY_DIR="$REPO_ROOT/gallery"
README_PATH="$GALLERY_DIR/README.md"

collect_files() {
  local target_dir="$1"
  find "$target_dir" -type f \
    ! -name '.gitkeep' \
    ! -name '.DS_Store' \
    | sed "s|^$GALLERY_DIR/||" \
    | sort
}

images="$(collect_files "$GALLERY_DIR/images")"
videos="$(collect_files "$GALLERY_DIR/videos")"

render_media_list() {
  local files="$1"
  local media_type="$2"
  local first_item=true

  while IFS= read -r file; do
    [[ -z "$file" ]] && continue

    filename="$(basename "$file")"
    title="${filename%.*}"

    if [[ "$first_item" == false ]]; then
      echo "---"
      echo
    fi

    echo "## <u>${title}</u>"
    echo

    if [[ "$media_type" == "image" ]]; then
      echo "<img src=\"${file}\" alt=\"${title}\" width=\"40%\" />"
    else
      echo "<video src=\"${file}\" controls preload=\"metadata\" width=\"40%\"></video>"
    fi

    echo
    first_item=false
  done <<< "$files"
}

{
  echo "# Gallery"
  echo
  echo "## Images:"
  echo

  if [[ -n "$images" ]]; then
    render_media_list "$images" "image"
  else
    echo "No images yet."
    echo
  fi

  echo "## Videos:"
  echo

  if [[ -n "$videos" ]]; then
    render_media_list "$videos" "video"
  else
    echo "No videos yet."
    echo
  fi
} > "$README_PATH"
