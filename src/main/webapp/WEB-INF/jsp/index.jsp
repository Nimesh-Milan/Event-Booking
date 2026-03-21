<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Event Booking | Luxury Experience</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'lux-gold': '#C5A880',      /* The classic luxury gold accent */
                        'lux-gold-dark': '#A38A66', /* Hover state for gold */
                        'lux-dark': '#111111',      /* Deep slate/black background */
                        'lux-card': '#1A1A1A'       /* Slightly lighter black for cards */
                    },
                    fontFamily: {
                        'sans': ['Inter', 'sans-serif'],
                        'serif': ['Playfair Display', 'serif'] /* Elegant serif for headings */
                    }
                }
            }
        }
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&family=Playfair+Display:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
</head>
<body class="bg-lux-dark text-white font-sans antialiased">

<nav class="absolute top-0 w-full z-50 px-10 py-6 flex justify-between items-center bg-gradient-to-b from-black/80 to-transparent">
    <div class="text-3xl font-serif font-bold text-white tracking-widest">
        <span class="text-lux-gold">E</span>VENTXO </div>
    <div class="space-x-8 text-sm font-semibold tracking-wide">
        <a href="#" class="hover:text-lux-gold transition-colors">HOME</a>
        <a href="#" class="hover:text-lux-gold transition-colors">ALL EVENTS</a>
        <a href="#" class="hover:text-lux-gold transition-colors">VENUES</a>
        <a href="login.jsp" class="border border-lux-gold text-lux-gold px-6 py-2 hover:bg-lux-gold hover:text-black transition-colors">SIGN IN</a>
    </div>
</nav>

<header class="relative h-screen flex items-center justify-center text-center">
    <div class="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1540575467063-178a50c2df87?q=80&w=2000&auto=format&fit=crop')] bg-cover bg-center">
        <div class="absolute inset-0 bg-black/60"></div>
    </div>

    <div class="relative z-10 px-4">
        <h2 class="text-lux-gold tracking-widest text-sm font-bold uppercase mb-4">Discover The Extraordinary</h2>
        <h1 class="text-6xl md:text-8xl font-serif text-white mb-8 shadow-sm">Reserve Your Experience</h1>
    </div>

    <div class="absolute bottom-16 w-full max-w-5xl mx-auto px-4 z-20">
        <form class="bg-lux-card shadow-2xl flex flex-col md:flex-row items-center justify-between p-4 border border-white/10">

            <div class="flex-1 w-full px-4 py-2 border-b md:border-b-0 md:border-r border-white/10">
                <label class="block text-xs text-gray-400 uppercase tracking-wider mb-1">Event Type</label>
                <select class="w-full bg-transparent text-white font-semibold outline-none appearance-none">
                    <option class="text-black">All Tech Workshops</option>
                    <option class="text-black">Music Festivals</option>
                    <option class="text-black">Guest Lectures</option>
                </select>
            </div>

            <div class="flex-1 w-full px-4 py-2 border-b md:border-b-0 md:border-r border-white/10">
                <label class="block text-xs text-gray-400 uppercase tracking-wider mb-1">Date</label>
                <input type="date" class="w-full bg-transparent text-white font-semibold outline-none [color-scheme:dark]">
            </div>

            <div class="w-full md:w-auto px-4 py-2 mt-4 md:mt-0">
                <button type="submit" class="w-full bg-lux-gold text-black font-bold tracking-widest uppercase px-10 py-4 hover:bg-lux-gold-dark transition-colors">
                    FIND EVENTS
                </button>
            </div>
        </form>
    </div>
</header>
</body>
</html>