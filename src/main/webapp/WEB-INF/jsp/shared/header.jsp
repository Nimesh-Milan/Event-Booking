<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        .bg-lux-dark {
            background-color: #121212;
        }
        .text-lux-gold {
            color: #FFD700;
        }
    </style>
</head>
<header class="bg-black text-white p-4 flex justify-between items-center border-b border-yellow-600">
    <div class="text-2xl font-bold text-lux-gold">EventBooking</div>
    <nav>
        <a href="/" class="px-4 hover:text-lux-gold">Home</a>
        <a href="/events" class="px-4 hover:text-lux-gold">Events</a>
        <a href="/login" class="px-4 hover:text-lux-gold">Login</a>
        <a href="/register" class="px-4 hover:text-lux-gold">Register</a>
    </nav>
</header>
