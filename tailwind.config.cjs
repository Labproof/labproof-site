/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        ink: '#1A221D',
        'ink-2': '#11160F',
        paper: '#F6F4EE',
        'paper-2': '#EFECE3',
        card: '#FFFDF8',
        green: '#1F7A52',
        'green-bright': '#2F9E6A',
        slate: '#6F7A72',
      },
      fontFamily: {
        newsreader: ['Newsreader', 'serif'],
        sans: ['IBM Plex Sans', 'sans-serif'],
        mono: ['IBM Plex Mono', 'monospace'],
      },
      fontSize: {
        'hero': ['74px', { lineHeight: '1.0', letterSpacing: '-0.025em' }],
        'h2': ['38px', { letterSpacing: '-0.02em' }],
        'h3': ['23px', { lineHeight: '21px' }],
        'subhead': ['19px', { lineHeight: '1.5' }],
        'body': ['16px', { lineHeight: '1.6' }],
        'sm-body': ['15px', { lineHeight: '1.6' }],
        'mono': ['12px', { letterSpacing: '0.06em', textTransform: 'uppercase' }],
      },
      borderRadius: {
        card: '12px',
        button: '8px',
        pill: '999px',
      },
      boxShadow: {
        'card-hover': '0 16px 38px rgba(26, 34, 29, 0.15)',
        'hero-img': '0 2px 6px rgba(26, 34, 29, 0.06), 0 24px 60px rgba(26, 34, 29, 0.12)',
      },
      maxWidth: {
        container: '1180px',
      },
    },
  },
  plugins: [],
};
