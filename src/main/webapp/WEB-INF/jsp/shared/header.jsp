<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdn.tailwindcss.com"></script>
<script>
    tailwind.config = {
        theme: {
            extend: {
                colors: {
                    'brand-primary': '#4F46E5',    /* Indigo 600 */
                    'brand-secondary': '#818CF8',  /* Indigo 400 */
                    'brand-accent': '#10B981',     /* Emerald 500 */
                    'bg-light': '#F9FAFB',         /* Gray 50 */
                    'bg-card': '#FFFFFF',          /* White */
                    'text-main': '#1F2937',        /* Gray 800 */
                    'text-muted': '#6B7280'        /* Gray 500 */
                },
                fontFamily: {
                    'sans': ['Inter', 'ui-sans-serif', 'system-ui', '-apple-system', 'sans-serif'],
                    'display': ['Poppins', 'serif']
                },
                boxShadow: {
                    'soft': '0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.03)',
                    'hover': '0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)'
                }
            }
        }
    }
</script>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@500;600;700&display=swap" rel="stylesheet">

<!-- Advanced Announcement Bar -->
<div class="bg-brand-primary text-white text-xs font-medium py-2 px-4 text-center tracking-wide">
    🎉 Spring Semester Tech Week is live! <a href="/events" class="underline hover:text-indigo-200 transition-colors ml-1 font-bold">Book your tickets now &rarr;</a>
</div>

<nav class="w-full z-50 px-6 lg:px-12 py-4 flex justify-between items-center bg-white shadow-soft sticky top-0 backdrop-blur-md bg-white/90 transition-all duration-300">
    <div class="text-2xl font-display font-bold text-brand-primary tracking-tight group">
        <a href="/" class="flex items-center gap-2">
            <div class="w-10 h-10 bg-indigo-50 rounded-xl flex items-center justify-center group-hover:bg-brand-primary transition-colors duration-300 shadow-sm">
                <svg class="w-6 h-6 text-brand-primary group-hover:text-white transition-colors duration-300" fill="currentColor" viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm.31-8.86c-1.77-.45-2.34-.94-2.34-1.67 0-.84.79-1.43 2.1-1.43 1.38 0 1.9.66 1.94 1.64h1.71c-.05-1.34-.87-2.57-2.49-2.97V5H10.9v1.69c-1.51.32-2.72 1.3-2.72 2.81 0 1.79 1.49 2.69 3.66 3.21 1.95.46 2.34 1.15 2.34 1.87 0 .53-.39 1.64-2.1 1.64-1.64 0-2.1-.92-2.16-1.66H8.1c.06 1.61 1.15 2.72 2.8 3.08V19h2.38v-1.66c1.6-.32 2.82-1.36 2.82-2.98 0-2.07-1.64-2.72-3.79-3.22z"/></svg>
            </div>
            <span class="bg-clip-text text-transparent bg-gradient-to-r from-brand-primary to-brand-secondary">EventFlow</span>
        </a>
    </div>

    <!-- Enhanced Main Navigation -->
    <div class="hidden lg:flex items-center space-x-1 bg-gray-50/80 px-2 py-1.5 rounded-full border border-gray-100 shadow-inner">
        <a href="/" class="px-5 py-2 text-sm font-medium text-text-muted hover:text-brand-primary hover:bg-white hover:shadow-sm rounded-full transition-all duration-200">Home</a>
        <a href="/events" class="px-5 py-2 text-sm font-medium text-text-muted hover:text-brand-primary hover:bg-white hover:shadow-sm rounded-full transition-all duration-200 flex items-center gap-1.5">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
            Explore
        </a>
        <a href="/venues" class="px-5 py-2 text-sm font-medium text-text-muted hover:text-brand-primary hover:bg-white hover:shadow-sm rounded-full transition-all duration-200 flex items-center gap-1.5">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path></svg>
            Venues
        </a>
        <a href="/support" class="px-5 py-2 text-sm font-medium text-text-muted hover:text-brand-primary hover:bg-white hover:shadow-sm rounded-full transition-all duration-200">Support</a>
    </div>

    <div class="flex items-center">
        <c:choose>
            <c:when test="${not empty sessionScope.loggedInUser}">
                <!-- Advanced User Dropdown -->
                <div class="relative group cursor-pointer inline-block">
                    <div class="flex items-center gap-3 bg-white hover:bg-gray-50 border border-gray-200 px-2 py-1.5 rounded-full transition-all duration-200 shadow-sm hover:shadow">
                        <div class="w-8 h-8 rounded-full bg-gradient-to-tr from-brand-primary to-brand-secondary text-white flex items-center justify-center text-sm font-bold shadow-inner border border-indigo-200">
                                ${sessionScope.loggedInUser.substring(0,1).toUpperCase()}
                        </div>
                        <div class="flex flex-col pr-2">
                            <span class="text-xs font-bold text-text-main leading-none">
                                <c:out value="${sessionScope.loggedInUser}" />
                            </span>
                            <span class="text-[10px] text-text-muted font-medium uppercase tracking-wider mt-0.5">Student</span>
                        </div>
                        <svg class="w-4 h-4 text-gray-400 mr-1 transition-transform duration-200 group-hover:-rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </div>

                    <div class="absolute right-0 mt-3 w-64 bg-white border border-gray-100 shadow-2xl rounded-2xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300 z-50 overflow-hidden transform origin-top-right scale-95 group-hover:scale-100">
                        <div class="px-5 py-4 bg-gradient-to-br from-indigo-50 to-white border-b border-gray-100">
                            <p class="text-sm font-bold text-text-main truncate"><c:out value="${sessionScope.loggedInUser}" /></p>
                            <p class="text-xs font-medium text-text-muted truncate mt-0.5"><c:out value="${sessionScope.loggedInEmail}" /></p>
                            <div class="mt-3 flex items-center gap-1.5">
                                <span class="relative flex h-2.5 w-2.5">
                                  <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-brand-accent opacity-75"></span>
                                  <span class="relative inline-flex rounded-full h-2.5 w-2.5 bg-brand-accent"></span>
                                </span>
                                <span class="text-xs font-semibold text-emerald-700">Account Active</span>
                            </div>
                        </div>
                        <div class="p-2">
                            <a href="/profile" class="px-4 py-2.5 text-sm font-medium text-text-main hover:bg-indigo-50 hover:text-brand-primary rounded-xl transition-colors flex items-center gap-3">
                                <div class="p-1.5 bg-gray-50 rounded-lg text-gray-500"><svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path></svg></div>
                                My Profile
                            </a>
                            <a href="/my-tickets" class="px-4 py-2.5 text-sm font-medium text-text-main hover:bg-indigo-50 hover:text-brand-primary rounded-xl transition-colors flex items-center gap-3">
                                <div class="p-1.5 bg-gray-50 rounded-lg text-gray-500"><svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 5v2m0 4v2m0 4v2M5 5a2 2 0 00-2 2v3a2 2 0 110 4v3a2 2 0 002 2h14a2 2 0 002-2v-3a2 2 0 110-4V7a2 2 0 00-2-2H5z"></path></svg></div>
                                My Tickets
                            </a>
                        </div>
                        <div class="p-2 bg-gray-50 border-t border-gray-100">
                            <a href="/logout" class="px-4 py-2 text-sm font-semibold text-red-600 hover:bg-red-100 rounded-lg transition-colors flex items-center gap-3">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 013-3h4a3 3 0 013 3v1"></path></svg>
                                Sign Out
                            </a>
                        </div>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <div class="flex items-center gap-2">
                    <a href="/login" class="text-sm font-semibold text-text-main hover:text-brand-primary px-4 py-2.5 rounded-lg hover:bg-gray-50 transition-all duration-200">Log in</a>
                    <a href="/register" class="bg-brand-primary text-white text-sm font-semibold px-6 py-2.5 rounded-xl hover:bg-indigo-700 hover:-translate-y-0.5 shadow-soft hover:shadow-md transition-all duration-300">Start Free</a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</nav>