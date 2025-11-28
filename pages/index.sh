#!/usr/bin/env bash
source ../config.sh

htmx_page << EOF
<div class="max-w-md mx-auto mt-10 p-6 border rounded shadow text-center">
  <h1 class="text-blue-500 text-4xl mb-4">${PROJECT_NAME}</h1>

  <div id="quote" class="text-xl font-semibold mb-4">
    $(component '/quote')
  </div>

  <button class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded"
          hx-get="/quote" hx-target="#quote" hx-swap="innerHTML">
    Random Quote
  </button>
</div>
EOF
