<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Ticket - EventFlow</title>
</head>
<body class="bg-bg-light text-text-main font-sans min-h-screen flex flex-col">
<jsp:include page="shared/header.jsp" />

<main class="flex-grow container mx-auto px-6 py-16 flex justify-center items-center">
    <div class="bg-white p-10 sm:p-12 rounded-2xl shadow-xl w-full max-w-md border border-gray-100">
        <div class="text-center mb-8">
            <h2 class="text-3xl font-display font-bold text-text-main mb-2">Reserve Tickets</h2>
            <p class="text-text-muted text-sm">Secure your spot at the next big event.</p>
        </div>

        <form action="/book-ticket" method="post" class="space-y-5">
            <div>
                <label for="customerName" class="block text-sm font-medium text-text-main mb-1.5">Your Name</label>
                <input type="text" id="customerName" name="customerName" required
                       class="block w-full px-4 py-3 bg-bg-light border border-gray-200 rounded-lg text-text-main focus:outline-none focus:border-brand-primary focus:ring-1 focus:ring-brand-primary transition-colors">
            </div>
            <div>
                <label for="eventName" class="block text-sm font-medium text-text-main mb-1.5">Event Name</label>
                <input type="text" id="eventName" name="eventName" required
                       class="block w-full px-4 py-3 bg-bg-light border border-gray-200 rounded-lg text-text-main focus:outline-none focus:border-brand-primary focus:ring-1 focus:ring-brand-primary transition-colors">
            </div>
            <div>
                <label for="quantity" class="block text-sm font-medium text-text-main mb-1.5">Quantity</label>
                <input type="number" id="quantity" name="quantity" min="1" required
                       class="block w-full px-4 py-3 bg-bg-light border border-gray-200 rounded-lg text-text-main focus:outline-none focus:border-brand-primary focus:ring-1 focus:ring-brand-primary transition-colors">
            </div>
            <button type="submit"
                    class="w-full bg-brand-primary text-white font-semibold py-3.5 rounded-lg hover:bg-indigo-700 shadow-soft hover:shadow-hover transition-all duration-200 mt-4">
                Confirm Booking
            </button>
        </form>
    </div>
</main>

<jsp:include page="shared/footer.jsp" />
</body>
</html>