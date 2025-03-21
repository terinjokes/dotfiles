# shellcheck shell=bash

# SPDX-License-Identifier: MPL-2.0
# SPDX-FileCopyrightText: Copyright 2023 Terin Stock

# Use a Kubernetes context managed by kubie.
#
# Usage: use kubie <context> <namespace>
use_kubie() {
    if [[ $# -ne 2 ]]; then
        log_error "use_kubie: context or namespace not provided"
        return 1
    fi

    if ! has kubie; then
        log_error "use_kubie: 'kubie' not found"
        return 1
    fi

    export KUBECONFIG=$(kubie export $1 $2)
}
