#!/usr/bin/env bash
source ../config.sh

htmx_page << EOF
<div class="min-h-screen flex justify-center items-center bg-gradient-to-br from-blue-100 via-purple-100 to-pink-100">
  <div class="bg-white p-10 rounded-2xl shadow-2xl w-full max-w-xl text-center transform hover:scale-[1.02] transition duration-300">

    <h1 class="text-5xl font-extrabold text-blue-600 mb-8">${PROJECT_NAME}</h1>

    <div id="quote" class="text-2xl font-medium text-gray-800 mb-8 italic tracking-wide">
      $(component '/quote')
    </div>

    <div class="flex justify-center space-x-4">
      <button class="bg-green-500 hover:bg-green-600 text-white font-bold py-3 px-8 rounded-lg shadow-lg transition duration-300 transform hover:-translate-y-0.5 hover:scale-105"
              hx-get="/quote" hx-target="#quote" hx-swap="innerHTML">
        Random Quote
      </button>

      <button class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-3 px-8 rounded-lg shadow-lg transition duration-300 transform hover:-translate-y-0.5 hover:scale-105"
              onclick="location.reload()">
        Reload Page
      </button>
    </div>

  </div>
</div>
EOF
