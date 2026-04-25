<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Tickets - EventBooking</title>
</head>
<body class="bg-lux-dark text-white font-sans">
<jsp:include page="shared/header.jsp" />

<main class="container mx-auto px-4 py-10 min-h-[70vh]">
    <h1 class="text-4xl font-bold text-lux-gold mb-8 text-center border-b border-gray-700 pb-4">My Tickets</h1>

    <c:choose>
        <c:when test="${empty tickets}">
            <div class="text-center text-gray-400 mt-10">
                <p class="text-xl">You have no tickets booked yet.</p>
                <a href="/events" class="inline-block mt-4 text-lux-gold hover:text-yellow-500 font-semibold border border-lux-gold px-6 py-2 rounded hover:bg-gray-800 transition duration-300">Browse Events</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <c:forEach var="ticket" items="${tickets}">
                    <div class="bg-gray-800 p-6 rounded-lg shadow-lg border border-gray-700 flex flex-col justify-between transform transition duration-300 hover:scale-105">
                        <div>
                            <h3 class="text-2xl font-bold text-lux-gold mb-2"><c:out value="${ticket.eventName}" /></h3>
                            <p class="text-gray-400 mb-1"><span class="font-semibold text-gray-300">Customer:</span> <c:out value="${ticket.customerName}" /></p>
                            <p class="text-gray-400 mb-4"><span class="font-semibold text-gray-300">Quantity:</span> <c:out value="${ticket.quantity}" /></p>
                        </div>
                        <div class="border-t border-gray-700 pt-4 mt-auto">
                            <p class="text-sm text-gray-500 font-mono">Ticket ID: <c:out value="${ticket.ticketId}" /></p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</main>

<jsp:include page="shared/footer.jsp" />
</body>
</html>
