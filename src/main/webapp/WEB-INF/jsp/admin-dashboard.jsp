<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - EVENTXO</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16">
        <div class="text-center mb-12 border-b border-white/10 pb-6">
            <h1 class="text-4xl font-serif text-white shadow-sm tracking-wide">Dashboard Overview</h1>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            <!-- Total Bookings Card -->
            <div class="bg-lux-card p-8 rounded-lg shadow-xl border border-white/10 flex flex-col items-center justify-center transform transition duration-300 hover:border-lux-gold group">
                <h3 class="text-xs font-medium text-gray-400 uppercase tracking-wider mb-4 group-hover:text-lux-gold transition-colors">Total Bookings</h3>
                <p class="text-5xl font-serif text-white">${totalBookings}</p>
            </div>

            <!-- Total Inquiries Card -->
            <div class="bg-lux-card p-8 rounded-lg shadow-xl border border-white/10 flex flex-col items-center justify-center transform transition duration-300 hover:border-lux-gold group">
                <h3 class="text-xs font-medium text-gray-400 uppercase tracking-wider mb-4 group-hover:text-lux-gold transition-colors">Total Inquiries</h3>
                <p class="text-5xl font-serif text-white">${totalInquiries}</p>
            </div>

            <!-- Placeholder Card 1 -->
            <div class="bg-lux-card p-8 rounded-lg shadow-xl border border-white/10 flex flex-col items-center justify-center transform transition duration-300 hover:border-lux-gold group">
                <h3 class="text-xs font-medium text-gray-400 uppercase tracking-wider mb-4 group-hover:text-lux-gold transition-colors">Total Revenue</h3>
                <p class="text-5xl font-serif text-white">$0.00</p>
                <p class="text-xs text-gray-500 tracking-wide mt-4 uppercase">Pending</p>
            </div>

            <!-- Placeholder Card 2 -->
            <div class="bg-lux-card p-8 rounded-lg shadow-xl border border-white/10 flex flex-col items-center justify-center transform transition duration-300 hover:border-lux-gold group">
                <h3 class="text-xs font-medium text-gray-400 uppercase tracking-wider mb-4 group-hover:text-lux-gold transition-colors">Pending Tickets</h3>
                <p class="text-5xl font-serif text-white">0</p>
                <p class="text-xs text-gray-500 tracking-wide mt-4 uppercase">Under Review</p>
            </div>
        </div>
    </main>

    <jsp:include page="shared/footer.jsp" />
</body>
</html>
