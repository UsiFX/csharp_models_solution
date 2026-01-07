# Copyright (C) 2026 UsiFX
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation.

# C# Models Makefile

.PHONY: help new readme run preview list-topics list-models

help:
	@echo ""
	@echo "Available commands:"
	@echo ""
	@echo "  make new topic=<category> model=<model>                                             Create a new model"
	@echo "      Example: make new topic=arrays-1d model=a7"
	@echo ""
	@echo "  make new topic=<category> model=<model> author=<author_name> email=<author_email>   Create a new model with license info"
	@echo "      Example: make new topic=arrays-1d model=a7 author=John\\ Doe email=john@example.com"
	@echo ""
	@echo "  make readme                                                                         Regenerate README.md"
	@echo ""
	@echo "  make run topic=<category> model=<model>                                             Run a model"
	@echo "      Example: make run topic=arrays-1d model=a7"
	@echo ""
	@echo "  make preview topic=<category> model=<model>                                         Preview sections from a model README"
	@echo "      Example: make preview topic=arrays-1d model=b4"
	@echo "      Optional flags (use with same make command):"
	@echo "        short=1            Show a compact one-line summary (Short Description / Problem first line + Input/Output)"
	@echo "        section=\"Heading\"  Show only the given heading (e.g. section=\"Logic\")"
	@echo "      Examples:"
	@echo "        make preview topic=arrays-1d model=b4 short=1"
	@echo "        make preview topic=arrays-1d model=b4 section=\"Logic\""
	@echo ""
	@echo "  make preview topic=<category>                                                        Show topic README or list models in topic"
	@echo "      Example: make preview topic=arrays-1d"
	@echo ""
	@echo "  make preview                                                                         List available topics"
	@echo ""
	@echo "  make list-topics                                                                     List available topics (alias for 'make preview')"
	@echo ""
	@echo "  make list-models topic=<category>                                                    List models in a topic"
	@echo "      Example: make list-models topic=arrays-1d"
	@echo ""
	@echo ""

new:
ifndef topic
	$(error [!] Missing 'topic'. Example: make new topic=arrays-1d model=a7)
endif
ifndef model
	$(error [!] Missing 'model'. Example: make new topic=arrays-1d model=a7)
endif
	@./new_model.sh $(topic) $(model) "$(author)" "$(email)"

readme:
	@./generate_readme.sh

run:
ifndef topic
	$(error [!] Missing 'topic'. Example: make run topic=arrays-1d model=a7)
endif
ifndef model
	$(error [!] Missing 'model'. Example: make run topic=arrays-1d model=a7)
endif
	@dotnet run -- $(topic) $(model)

# Preview helpers (requires scripts/preview_help.sh)
preview:
	@./preview_help.sh "$(topic)" "$(model)" $(if $(short),--short) $(if $(section),--section="$(section)")

list-topics:
	@./preview_help.sh --list-topics

list-models:
ifndef topic
	$(error [!] Missing 'topic'. Example: make list-models topic=arrays-1d)
endif
	@./preview_help.sh --list-models "$(topic)"