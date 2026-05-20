<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Tickets - EventFlow</title>
</head>
<body class="bg-bg-light text-text-main font-sans min-h-screen flex flex-col">
<jsp:include page="shared/header.jsp" />

<main class="flex-grow container mx-auto px-6 lg:px-12 py-16">
    <div class="text-center mb-16">
        <h2 class="text-brand-primary font-semibold tracking-wider text-sm uppercase mb-3">Your Experiences</h2>
        <h1 class="text-4xl md:text-5xl font-display font-bold text-text-main">My Tickets</h1>
    </div>

    <c:choose>
        <c:when test="${empty tickets}">
            <div class="text-center text-text-muted mt-10 bg-white p-12 rounded-2xl shadow-soft border border-gray-100 max-w-2xl mx-auto">
                <div class="w-20 h-20 bg-indigo-50 rounded-full flex items-center justify-center mx-auto mb-6">
                    <svg class="w-10 h-10 text-brand-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 5v2m0 4v2m0 4v2M5 5a2 2 0 00-2 2v3a2 2 0 110 4v3a2 2 0 002 2h14a2 2 0 002-2v-3a2 2 0 110-4V7a2 2 0 00-2-2H5z"></path></svg>
                </div>
                <p class="text-lg font-medium text-text-main mb-6">You have no tickets booked yet.</p>
                <a href="/events" class="inline-block bg-brand-primary text-white font-semibold px-8 py-3 rounded-xl shadow-soft hover:shadow-hover hover:bg-indigo-700 transition-all duration-200">
                    Browse Events
                </a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <c:forEach var="ticket" items="${tickets}">
                    <div class="bg-white rounded-2xl shadow-soft border border-gray-100 flex flex-col justify-between hover:shadow-hover transition-all duration-300">
                        <div class="p-8">
                            <div class="inline-block px-3 py-1 bg-emerald-50 text-brand-accent text-xs font-bold rounded-full mb-4 uppercase tracking-wide">Confirmed</div>
                            <h3 class="text-2xl font-display font-bold text-text-main mb-6"><c:out value="${ticket.eventName}" /></h3>

                            <div class="space-y-4">
                                <div class="flex flex-col border-b border-gray-50 pb-4">
                                    <span class="text-xs font-semibold text-text-muted uppercase tracking-wider mb-1">Attendee</span>
                                    <span class="text-text-main font-medium"><c:out value="${ticket.customerName}" /></span>
                                </div>

                                <!-- UPDATE OPERATION FORM -->
                                <form action="/update-ticket" method="post" class="flex items-end gap-3 pt-2">
                                    <input type="hidden" name="ticketId" value="${ticket.ticketId}">
                                    <div class="flex-1">
                                        <label class="text-xs font-semibold text-text-muted uppercase tracking-wider block mb-2">Quantity</label>
                                        <input type="number" name="newQuantity" value="${ticket.quantity}" min="1"
                                               class="w-full px-3 py-2 bg-bg-light border border-gray-200 text-text-main rounded-lg focus:outline-none focus:border-brand-primary focus:ring-1 focus:ring-brand-primary transition-colors">
                                    </div>
                                    <button type="submit" class="bg-indigo-50 text-brand-primary font-semibold text-sm px-4 py-2.5 rounded-lg hover:bg-brand-primary hover:text-white transition-colors duration-200">
                                        Update
                                    </button>
                                </form>
                            </div>
                        </div>

                        <div class="border-t border-gray-100 p-6 bg-gray-50 rounded-b-2xl flex justify-between items-center">
                            <div class="flex flex-col">
                                <span class="text-[10px] text-text-muted font-semibold uppercase tracking-wider mb-1">Ticket ID</span>
                                <span class="text-xs text-text-main font-mono bg-white border border-gray-200 px-2 py-1 rounded" title="${ticket.ticketId}">
                                        ${ticket.ticketId.substring(0,8)}...
                                    </span>
                            </div>

                            <!-- DELETE OPERATION FORM -->
                            <form action="/cancel-ticket" method="post" onsubmit="return confirm('Are you sure you want to cancel this ticket?');">
                                <input type="hidden" name="ticketId" value="${ticket.ticketId}">
                                <button type="submit" class="text-red-600 hover:text-red-700 bg-red-50 hover:bg-red-100 font-semibold text-sm px-4 py-2 rounded-lg transition-colors duration-200 flex items-center gap-1.5">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                    Cancel
                                </button>
                            </form>
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