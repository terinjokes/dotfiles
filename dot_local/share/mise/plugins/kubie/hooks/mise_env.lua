-- SPDX-License-Identifier: EUPL-1.2
-- SPDX-FileCopyrightText: 2026 Terin Stock

local cmd = require("cmd")

function PLUGIN:MiseEnv(ctx)
    local context = ctx.options.context or error("context required")
    local namespace = ctx.options.namespace or "default"

    local output = cmd.exec(string.format("kubie export %s %s", context, namespace))

    return {
        {
            key = "KUBECONTEXT",
            value = output
        }
    }
end
