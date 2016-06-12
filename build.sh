valac -o vala-linter \
  --enable-checking \
  --pkg glib-2.0 \
  --pkg json-glib-1.0 \
  --pkg posix \
  --target-glib=2.38 \
  src/*.vala \
  src/core/*.vala \
  src/utils/logger.vala \
  #src/core/interfaces/*.vala \
  #src/rules/*.vala \
