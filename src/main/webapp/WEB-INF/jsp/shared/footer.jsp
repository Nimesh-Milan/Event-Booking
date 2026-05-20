<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="bg-gray-900 border-t border-gray-800 mt-auto w-full relative overflow-hidden">
    <!-- Decorative background elements -->
    <div class="absolute top-0 right-0 w-96 h-96 bg-brand-primary rounded-full blur-3xl opacity-10 -mr-48 -mt-48 pointer-events-none"></div>
    <div class="absolute bottom-0 left-0 w-96 h-96 bg-brand-accent rounded-full blur-3xl opacity-10 -ml-48 -mb-48 pointer-events-none"></div>

    <div class="max-w-7xl mx-auto px-6 lg:px-12 py-16 relative z-10">
        <!-- Top Section: Brand & Newsletter -->
        <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 mb-16 border-b border-gray-800 pb-16">
            <div class="lg:col-span-5">
                <a href="/" class="flex items-center gap-3 text-2xl font-display font-bold text-white mb-6">
                    <div class="w-12 h-12 bg-gradient-to-br from-brand-primary to-brand-secondary rounded-xl flex items-center justify-center shadow-lg">
                        <svg class="w-7 h-7 text-white" fill="currentColor" viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm.31-8.86c-1.77-.45-2.34-.94-2.34-1.67 0-.84.79-1.43 2.1-1.43 1.38 0 1.9.66 1.94 1.64h1.71c-.05-1.34-.87-2.57-2.49-2.97V5H10.9v1.69c-1.51.32-2.72 1.3-2.72 2.81 0 1.79 1.49 2.69 3.66 3.21 1.95.46 2.34 1.15 2.34 1.87 0 .53-.39 1.64-2.1 1.64-1.64 0-2.1-.92-2.16-1.66H8.1c.06 1.61 1.15 2.72 2.8 3.08V19h2.38v-1.66c1.6-.32 2.82-1.36 2.82-2.98 0-2.07-1.64-2.72-3.79-3.22z"/></svg>
                    </div>
                    <span class="tracking-tight">EventFlow</span>
                </a>
                <p class="text-gray-400 text-base leading-relaxed max-w-sm font-light">
                    The modern, thread-safe platform designed to revolutionize how students discover and book university events.
                </p>
            </div>

            <div class="lg:col-span-7 flex flex-col md:flex-row gap-8 lg:justify-end">
                <div class="w-full md:w-auto max-w-md bg-gray-800/50 p-6 rounded-2xl border border-gray-700/50 backdrop-blur-sm">
                    <h3 class="text-sm font-bold text-white mb-2 uppercase tracking-wider flex items-center gap-2">
                        <svg class="w-4 h-4 text-brand-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path></svg>
                        Stay Updated
                    </h3>
                    <p class="text-gray-400 text-sm mb-4">Get the latest campus events delivered to your inbox weekly.</p>
                    <form class="flex flex-col sm:flex-row gap-3" onsubmit="event.preventDefault(); alert('Subscribed successfully!');">
                        <input type="email" placeholder="student@university.edu" required class="flex-1 bg-gray-900 border border-gray-700 text-gray-200 text-sm px-4 py-3 rounded-xl focus:outline-none focus:border-brand-primary focus:ring-1 focus:ring-brand-primary transition-all placeholder-gray-500">
                        <button type="submit" class="bg-brand-primary hover:bg-brand-secondary text-white font-semibold px-6 py-3 rounded-xl shadow-lg shadow-brand-primary/20 transition-all duration-200 whitespace-nowrap">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Middle Section: Links -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-8 mb-12">
            <div>
                <h3 class="text-sm font-bold text-white mb-6 tracking-wide uppercase">Platform</h3>
                <ul class="space-y-4 text-sm text-gray-400 font-medium">
                    <li><a href="/events" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Browse Events</a></li>
                    <li><a href="/venues" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Campus Venues</a></li>
                    <li><a href="/reviews" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Read Reviews</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-sm font-bold text-white mb-6 tracking-wide uppercase">Account</h3>
                <ul class="space-y-4 text-sm text-gray-400 font-medium">
                    <li><a href="/login" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Sign In</a></li>
                    <li><a href="/register" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Create Account</a></li>
                    <li><a href="/profile" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> My Tickets</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-sm font-bold text-white mb-6 tracking-wide uppercase">Help & Support</h3>
                <ul class="space-y-4 text-sm text-gray-400 font-medium">
                    <li><a href="/support" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Contact Desk</a></li>
                    <li><a href="#" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> FAQs</a></li>
                    <li><a href="#" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Reporting Issues</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-sm font-bold text-white mb-6 tracking-wide uppercase">Administrative</h3>
                <ul class="space-y-4 text-sm text-gray-400 font-medium">
                    <li><a href="/admin" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Staff Portal</a></li>
                    <li><a href="/admin/dashboard" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> Live Analytics</a></li>
                    <li><a href="#" class="hover:text-brand-secondary transition-colors flex items-center gap-2 group"><span class="w-1.5 h-1.5 rounded-full bg-gray-600 group-hover:bg-brand-secondary transition-colors"></span> System Status</a></li>
                </ul>
            </div>
        </div>

        <!-- Bottom Section: Copyright & Socials -->
        <div class="pt-8 border-t border-gray-800 flex flex-col md:flex-row justify-between items-center gap-6">
            <div class="flex items-center gap-2">
                <span class="text-sm font-medium text-gray-400">&copy; 2024 EventFlow System.</span>
                <span class="hidden md:inline text-gray-600">|</span>
                <span class="text-sm text-gray-400 flex items-center gap-1">Built with <svg class="w-3.5 h-3.5 text-red-500 fill-current" viewBox="0 0 20 20"><path d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" clip-rule="evenodd" fill-rule="evenodd"></path></svg> by Team</span>
            </div>

            <div class="flex gap-4">
                <a href="#" class="w-10 h-10 bg-gray-800 rounded-full flex items-center justify-center text-gray-400 hover:text-white hover:bg-brand-primary transition-all duration-200">
                    <span class="sr-only">Twitter</span>
                    <svg class="h-5 w-5" fill="currentColor" viewBox="0 0 24 24"><path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84"/></svg>
                </a>
                <a href="#" class="w-10 h-10 bg-gray-800 rounded-full flex items-center justify-center text-gray-400 hover:text-white hover:bg-brand-primary transition-all duration-200">
                    <span class="sr-only">GitHub</span>
                    <svg class="h-5 w-5" fill="currentColor" viewBox="0 0 24 24"><path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd"/></svg>
                </a>
            </div>
        </div>
    </div>
</footer>