<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Events - Admin</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16">
        <div class="flex justify-between items-center mb-12 border-b border-white/10 pb-6">
            <h1 class="text-4xl font-serif text-white shadow-sm tracking-wide">Manage Events</h1>
            <button class="bg-lux-gold text-black font-bold tracking-widest text-xs uppercase px-6 py-3 hover:bg-lux-gold-dark transition-colors">
                + CREATE EVENT
            </button>
        </div>

        <c:choose>
            <c:when test="${empty events}">
                <div class="text-center text-gray-400 mt-10 bg-lux-card p-10 rounded-lg shadow-xl border border-white/10 max-w-3xl mx-auto">
                    <p class="text-lg font-serif tracking-wide">No events found in the system.</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="overflow-x-auto shadow-2xl rounded-lg border border-white/10">
                    <table class="w-full text-left border-collapse">
                        <thead>
                            <tr class="bg-black/80 border-b border-white/10">
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Event ID</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Title</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Date</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Tickets Available</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="bg-lux-card divide-y divide-white/5">
                            <c:forEach var="event" items="${events}">
                                <tr class="hover:bg-black/40 transition-colors duration-200 group">
                                    <td class="py-5 px-6 text-sm text-gray-400 font-mono tracking-wider"><c:out value="${event.eventId}" /></td>
                                    <td class="py-5 px-6 text-sm text-lux-gold font-serif tracking-wide text-lg"><c:out value="${event.title}" /></td>
                                    <td class="py-5 px-6 text-sm text-white tracking-wide"><c:out value="${event.date}" /></td>
                                    <td class="py-5 px-6 text-sm font-medium tracking-wide">
                                        <c:choose>
                                            <c:when test="${event.availableTickets <= 0}">
                                                <span class="text-red-500 uppercase text-xs tracking-widest">Sold Out</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="text-gray-300"><c:out value="${event.availableTickets}" /></span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="py-5 px-6 text-sm text-center flex justify-center space-x-4">
                                        <button class="text-xs uppercase tracking-widest font-bold text-gray-400 hover:text-white transition-colors">
                                            EDIT
                                        </button>
                                        <button class="text-xs uppercase tracking-widest font-bold text-red-500 hover:text-red-400 transition-colors">
                                            CANCEL
                                        </button>
                                    </td>
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