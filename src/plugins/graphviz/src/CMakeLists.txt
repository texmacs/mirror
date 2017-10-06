include_directories (${TEXMACS_BINARY_DIR}/src/System/)

set (graphviz_SRCS tm_graphviz.c)

add_executable (tm_graphviz ${graphviz_SRCS})

install(TARGETS tm_graphviz DESTINATION share/TeXmacs/plugins/graphviz/bin)
