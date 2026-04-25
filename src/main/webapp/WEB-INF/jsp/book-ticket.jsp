<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Ticket - EventBooking</title>
</head>
<body class="bg-lux-dark text-white font-sans">
<jsp:include page="shared/header.jsp" />

<main class="container mx-auto px-4 py-10 flex justify-center items-center min-h-[70vh]">
    <div class="bg-gray-800 p-8 rounded-lg shadow-lg w-full max-w-md border border-gray-700">
        <h2 class="text-3xl font-bold text-lux-gold mb-6 text-center">Book Your Ticket</h2>
        <form action="/book-ticket" method="post" class="space-y-4">
            <div>
                <label for="customerName" class="block text-sm font-medium text-gray-300">Your Name</label>
                <input type="text" id="customerName" name="customerName" required
                       class="mt-1 block w-full px-3 py-2 bg-gray-900 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-lux-gold focus:border-lux-gold">
            </div>
            <div>
                <label for="eventName" class="block text-sm font-medium text-gray-300">Event Name</label>
                <input type="text" id="eventName" name="eventName" required
                       class="mt-1 block w-full px-3 py-2 bg-gray-900 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-lux-gold focus:border-lux-gold">
            </div>
            <div>
                <label for="quantity" class="block text-sm font-medium text-gray-300">Quantity</label>
                <input type="number" id="quantity" name="quantity" min="1" required
                       class="mt-1 block w-full px-3 py-2 bg-gray-900 border border-gray-600 rounded-md text-white focus:outline-none focus:ring-lux-gold focus:border-lux-gold">
            </div>
            <button type="submit"
                    class="w-full bg-yellow-600 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
                Confirm Booking
            </button>
        </form>
    </div>
</main>

<jsp:include page="shared/footer.jsp" />
</body>
</html>
