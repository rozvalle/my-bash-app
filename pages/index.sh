#!/usr/bin/env bash
source ../config.sh

htmx_page << EOF
<div class="min-h-screen flex flex-col justify-center items-center">
  <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-lg text-center">
    <h1 class="text-4xl font-bold text-blue-600 mb-6">${PROJECT_NAME}</h1>

    <div id="quote" class="text-xl font-semibold text-gray-800 mb-6">
      $(component '/quote')
    </div>

    <button class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-6 rounded mr-3"
            hx-get="/quote" hx-target="#quote" hx-swap="innerHTML">
      Random Quote
    </button>

    <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded"
            onclick="location.reload()">
      Reload Page
    </button>
  </div>
</div>
EOF
