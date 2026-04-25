<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Bookings - Admin</title>
</head>
<body class="bg-lux-dark text-white font-sans">
<jsp:include page="shared/header.jsp" />

<main class="container mx-auto px-4 py-10 min-h-[70vh]">
    <h1 class="text-4xl font-bold text-lux-gold mb-8 text-center border-b border-gray-700 pb-4">All Bookings</h1>

    <c:choose>
        <c:when test="${empty bookings}">
            <div class="text-center text-gray-400 mt-10 bg-gray-800 p-8 rounded-lg shadow-lg border border-gray-700">
                <p class="text-xl font-semibold">No bookings have been made yet.</p>
            </div>
        </c:when>
        <c:otherwise>
            <div class="overflow-x-auto shadow-2xl rounded-lg border border-gray-700">
                <table class="w-full text-left border-collapse">
                    <thead>
                    <tr class="bg-gray-900 border-b border-gray-700">
                        <th class="py-4 px-6 text-sm font-semibold text-gray-400 uppercase tracking-wider">Ticket ID</th>
                        <th class="py-4 px-6 text-sm font-semibold text-gray-400 uppercase tracking-wider">Customer Name</th>
                        <th class="py-4 px-6 text-sm font-semibold text-gray-400 uppercase tracking-wider">Event Name</th>
                        <th class="py-4 px-6 text-sm font-semibold text-gray-400 uppercase tracking-wider">Quantity</th>
                    </tr>
                    </thead>
                    <tbody class="bg-gray-800 divide-y divide-gray-700">
                    <c:forEach var="booking" items="${bookings}">
                        <tr class="hover:bg-gray-750 transition-colors duration-200 group">
                            <td class="py-4 px-6 text-sm text-gray-400 font-mono"><c:out value="${booking.ticketId}" /></td>
                            <td class="py-4 px-6 text-sm text-gray-100 font-medium"><c:out value="${booking.customerName}" /></td>
                            <td class="py-4 px-6 text-sm text-lux-gold"><c:out value="${booking.eventName}" /></td>
                            <td class="py-4 px-6 text-sm text-gray-300"><c:out value="${booking.quantity}" /></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:otherwise>
    </c:choose>
</main>

<jsp:include page="shared/footer.jsp" />
</body>
</html>