<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>EventFlow | Modern Campus Experiences</title>
    <jsp:include page="shared/header.jsp" />
    <style>
        .hero-pattern {
            background-color: #ffffff;
            background-image: radial-gradient(#e5e7eb 1px, transparent 1px);
            background-size: 20px 20px;
        }
        .gradient-text {
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</head>
<body class="bg-bg-light text-text-main font-sans min-h-screen flex flex-col">

<!-- Main Hero Section -->
<header class="relative pt-12 pb-24 lg:pt-20 lg:pb-32 overflow-hidden hero-pattern border-b border-gray-100">
    <div class="absolute inset-0 bg-gradient-to-b from-transparent via-white/50 to-white/90 z-0"></div>

    <div class="container mx-auto px-6 lg:px-12 relative z-10 text-center max-w-5xl">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-emerald-50 border border-emerald-100 text-emerald-700 text-sm font-semibold mb-6 animate-fade-in-up">
            <span class="flex h-2 w-2 relative">
                <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-500 opacity-75"></span>
                <span class="relative inline-flex rounded-full h-2 w-2 bg-emerald-500"></span>
            </span>
            Live: Campus Tech Week 2024
        </div>

        <h1 class="text-5xl md:text-7xl font-display font-extrabold text-text-main mb-4 leading-tight tracking-tight">
            Discover What's <br/>
            <span class="bg-gradient-to-r from-brand-primary via-brand-secondary to-brand-accent gradient-text pb-2">Happening on Campus</span>
        </h1>

        <p class="text-lg md:text-xl text-text-muted mb-8 max-w-3xl mx-auto leading-relaxed font-light">
            The all-in-one platform to find, book, and review the university's most anticipated events.
        </p>

        <div class="flex flex-col sm:flex-row justify-center gap-4">
            <a href="/events" class="bg-brand-primary text-white font-semibold px-8 py-4 rounded-2xl shadow-lg shadow-indigo-200 hover:shadow-xl hover:bg-indigo-700 hover:-translate-y-1 transition-all duration-300 text-lg flex items-center justify-center gap-2">
                Explore Events
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path></svg>
            </a>
            <a href="/register" class="bg-white text-text-main font-semibold px-8 py-4 rounded-2xl shadow-soft border border-gray-200 hover:border-gray-300 hover:bg-gray-50 hover:-translate-y-1 transition-all duration-300 text-lg flex items-center justify-center gap-2">
                Join the Community
            </a>
        </div>
    </div>
</header>

<!-- Stats / Trust Bar -->
<div class="bg-white relative z-20 shadow-sm">
    <div class="container mx-auto px-6 py-6">
        <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-center divide-x divide-gray-100">
            <div>
                <p class="text-2xl font-display font-bold text-brand-primary mb-1">50+</p>
                <p class="text-xs font-semibold text-text-muted uppercase tracking-wider">Active Events</p>
            </div>
            <div>
                <p class="text-2xl font-display font-bold text-brand-primary mb-1">10k+</p>
                <p class="text-xs font-semibold text-text-muted uppercase tracking-wider">Students</p>
            </div>
            <div>
                <p class="text-2xl font-display font-bold text-brand-primary mb-1">15</p>
                <p class="text-xs font-semibold text-text-muted uppercase tracking-wider">Campus Venues</p>
            </div>
            <div>
                <p class="text-2xl font-display font-bold text-brand-primary mb-1">4.9</p>
                <p class="text-xs font-semibold text-text-muted uppercase tracking-wider">Average Rating</p>
            </div>
        </div>
    </div>
</div>

<!-- Features Section -->
<section class="bg-bg-light py-20">
    <div class="container mx-auto px-6 lg:px-12 max-w-7xl">
        <div class="text-center mb-12">
            <h2 class="text-brand-primary font-semibold uppercase tracking-wider text-sm mb-2">Why EventFlow</h2>
            <h3 class="text-3xl md:text-4xl font-display font-bold text-text-main">Built for the campus community</h3>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <!-- Feature 1 -->
            <div class="bg-white p-8 rounded-3xl shadow-soft hover:shadow-hover transition-all duration-300 border border-gray-100">
                <div class="w-14 h-14 bg-indigo-50 rounded-2xl flex items-center justify-center mb-6">
                    <svg class="w-7 h-7 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                </div>
                <h4 class="text-xl font-bold text-text-main mb-3">Instant Booking</h4>
                <p class="text-text-muted leading-relaxed mb-6 text-sm">Secure your tickets instantly with our thread-safe queuing system. Never lose your spot to a server crash during high-demand events.</p>
                <a href="/events" class="text-brand-primary font-semibold hover:text-indigo-800 flex items-center gap-1 transition-colors text-sm">
                    Find events <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                </a>
            </div>

            <!-- Feature 2 -->
            <div class="bg-white p-8 rounded-3xl shadow-soft hover:shadow-hover transition-all duration-300 border border-gray-100">
                <div class="w-14 h-14 bg-emerald-50 rounded-2xl flex items-center justify-center mb-6">
                    <svg class="w-7 h-7 text-brand-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path></svg>
                </div>
                <h4 class="text-xl font-bold text-text-main mb-3">Premium Venues</h4>
                <p class="text-text-muted leading-relaxed mb-6 text-sm">Explore university halls and auditoriums with detailed capacity and pricing information, updated in real-time by admins.</p>
                <a href="/venues" class="text-brand-accent font-semibold hover:text-emerald-700 flex items-center gap-1 transition-colors text-sm">
                    View venues <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                </a>
            </div>

            <!-- Feature 3 -->
            <div class="bg-white p-8 rounded-3xl shadow-soft hover:shadow-hover transition-all duration-300 border border-gray-100">
                <div class="w-14 h-14 bg-blue-50 rounded-2xl flex items-center justify-center mb-6">
                    <svg class="w-7 h-7 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path></svg>
                </div>
                <h4 class="text-xl font-bold text-text-main mb-3">Secure & Verified</h4>
                <p class="text-text-muted leading-relaxed mb-6 text-sm">Admin-approved events only. Read verified reviews from students who attended previous events and share your own experiences.</p>
                <a href="/reviews" class="text-blue-500 font-semibold hover:text-blue-700 flex items-center gap-1 transition-colors text-sm">
                    Read reviews <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Call to Action -->
<section class="relative py-20 bg-brand-primary overflow-hidden">
    <!-- Abstract circles for visual interest -->
    <div class="absolute top-0 right-0 -mr-20 -mt-20 w-64 h-64 rounded-full bg-white opacity-10"></div>
    <div class="absolute bottom-0 left-0 -ml-20 -mb-20 w-80 h-80 rounded-full bg-indigo-900 opacity-20"></div>

    <div class="container mx-auto px-6 lg:px-12 relative z-10 text-center max-w-3xl">
        <h2 class="text-3xl md:text-4xl font-display font-bold text-white mb-4">Ready to join the experience?</h2>
        <p class="text-indigo-100 text-lg mb-8">Create an account today to start booking tickets, tracking your schedule, and leaving reviews.</p>
        <a href="/register" class="inline-block bg-white text-brand-primary font-bold px-8 py-4 rounded-xl shadow-lg hover:shadow-xl hover:bg-gray-50 hover:-translate-y-1 transition-all duration-300 text-lg">
            Get Started for Free
        </a>
    </div>
</section>

<jsp:include page="shared/footer.jsp" />
</body>
</html>