const defaultTheme = require('tailwindcss/defaultTheme')

/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./web/**/*.{js,ts,jsx,tsx,html}",
  ],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['"M PLUS Rounded 1c"', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [],
}

