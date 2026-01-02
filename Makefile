# Copyright (C) 2026 UsiFX
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation.

# C# Models Makefile

.PHONY: help new readme list

help:
	@echo ""
	@echo "Available commands:"
	@echo ""
	@echo "  make new topic=<category> model=<model>                                             Create a new model"
	@echo "      Example: make new topic=arrays-1d model=a7"
	@echo ""
	@echo "  make new topic=<category> model=<model> author=<author_name> email=<author_email>   Create a new model with license info"
	@echo "      Example: make new topic=arrays-1d model=a7 author=John\ Doe email=john@example.com"
	@echo ""
	@echo "  make readme                                                                         Regenerate README.md"
	@echo ""
	@echo "  make run topic=<category> model=<model>                                             Run a model"
	@echo "      Example: make run topic=arrays-1d model=a7"
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
