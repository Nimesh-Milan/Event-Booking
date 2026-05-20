<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Bookings - EventFlow Admin</title>
</head>
<body class="bg-bg-light text-text-main font-sans min-h-screen flex flex-col">
<jsp:include page="shared/header.jsp" />

<!-- Admin Navigation Context -->
<div class="bg-white border-b border-gray-100">
    <div class="container mx-auto px-6 lg:px-12 flex items-center justify-between py-3">
            <span class="text-sm font-semibold text-brand-primary flex items-center gap-2">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path></svg>
                Staff Portal Mode
            </span>
        <div class="flex gap-4 text-sm font-medium">
            <a href="/admin/dashboard" class="text-text-muted hover:text-brand-primary transition-colors">Dashboard</a>
            <a href="/admin/manage-events" class="text-text-muted hover:text-brand-primary transition-colors">Events</a>
            <a href="/admin/manage-venues" class="text-text-muted hover:text-brand-primary transition-colors">Venues</a>
            <a href="/admin/manage-staff" class="text-text-muted hover:text-brand-primary transition-colors">Staff</a>
        </div>
    </div>
</div>

<main class="flex-grow container mx-auto px-6 py-10 lg:py-16">
    <div class="mb-10">
        <h1 class="text-3xl md:text-4xl font-display font-bold text-text-main tracking-tight">All Bookings</h1>
        <p class="text-text-muted mt-2">Audit and review all ticket reservations across the platform.</p>
    </div>

    <c:choose>
        <c:when test="${empty bookings}">
            <div class="text-center text-text-muted mt-10 bg-white p-12 rounded-2xl shadow-soft border border-gray-100 max-w-3xl mx-auto flex flex-col items-center">
                <div class="w-16 h-16 bg-gray-50 rounded-full flex items-center justify-center mb-6">
                    <svg class="w-8 h-8 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"></path></svg>
                </div>
                <p class="text-lg font-medium text-text-main">No bookings have been made yet.</p>
            </div>
        </c:when>
        <c:otherwise>
            <div class="bg-white shadow-soft rounded-2xl border border-gray-100 overflow-hidden">
                <div class="overflow-x-auto">
                    <table class="w-full text-left border-collapse min-w-max">
                        <thead>
                        <tr class="bg-gray-50 border-b border-gray-100">
                            <th class="py-4 px-6 text-xs font-semibold text-text-muted uppercase tracking-wider">Ticket ID</th>
                            <th class="py-4 px-6 text-xs font-semibold text-text-muted uppercase tracking-wider">Customer Name</th>
                            <th class="py-4 px-6 text-xs font-semibold text-text-muted uppercase tracking-wider">Event Name</th>
                            <th class="py-4 px-6 text-xs font-semibold text-text-muted uppercase tracking-wider text-right">Quantity</th>
                        </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-100">
                        <c:forEach var="booking" items="${bookings}">
                            <tr class="hover:bg-gray-50/50 transition-colors duration-200">
                                <td class="py-4 px-6 text-sm text-text-muted font-mono tracking-wider">
                                            <span class="bg-gray-50 border border-gray-200 px-2 py-1 rounded text-xs" title="${booking.ticketId}">
                                                ${booking.ticketId.substring(0,8)}...
                                            </span>
                                </td>
                                <td class="py-4 px-6 text-sm text-text-main font-semibold"><c:out value="${booking.customerName}" /></td>
                                <td class="py-4 px-6 text-sm text-brand-primary font-medium"><c:out value="${booking.eventName}" /></td>
                                <td class="py-4 px-6 text-sm text-text-main font-bold text-right"><c:out value="${booking.quantity}" /></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
</main>

<jsp:include page="shared/footer.jsp" />
</body>
</html>