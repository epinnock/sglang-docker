#!/bin/bash
# Default command if none is provided
CMD="python -m sglang.launch_server --model-path TheBloke/WizardCoder-33B-V1.1-AWQ --port 30000  --model-mode flashinfer"

# If arguments are passed, execute them instead
if [ $# -gt 0 ]; then
    CMD="$@"
fi

echo "Executing command: $CMD"
exec $CMD
