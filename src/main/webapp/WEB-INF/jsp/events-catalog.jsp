<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event Catalog - EVENTXO</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16">
        <div class="text-center mb-16">
            <h2 class="text-lux-gold tracking-widest text-sm font-bold uppercase mb-2">Our Collection</h2>
            <h1 class="text-5xl font-serif text-white shadow-sm">Upcoming Events</h1>
        </div>

        <c:choose>
            <c:when test="${empty events}">
                <div class="text-center text-gray-400 mt-10">
                    <p class="text-xl">No events available at the moment. Please check back later.</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    <c:forEach var="event" items="${events}">
                        <div class="bg-lux-card border border-white/10 group flex flex-col">
                            <div class="p-8 flex flex-col flex-grow">
                                <div class="mb-6">
                                    <h3 class="text-2xl font-serif text-white group-hover:text-lux-gold transition-colors duration-300">
                                        <c:out value="${event.title}" />
                                    </h3>
                                </div>

                                <div class="mt-auto pt-6 border-t border-white/10 space-y-4">
                                    <div class="flex items-center text-gray-400 text-sm tracking-wide">
                                        <svg class="w-4 h-4 mr-3 text-lux-gold" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                                        </svg>
                                        <span><c:out value="${event.date}" /></span>
                                    </div>

                                    <div class="flex items-center text-gray-400 text-sm tracking-wide">
                                        <svg class="w-4 h-4 mr-3 text-lux-gold" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 5v2m0 4v2m0 4v2M5 5a2 2 0 00-2 2v3a2 2 0 110 4v3a2 2 0 002 2h14a2 2 0 002-2v-3a2 2 0 110-4V7a2 2 0 00-2-2H5z"></path>
                                        </svg>
                                        <span><c:out value="${event.availableTickets}" /> tickets available</span>
                                    </div>
                                </div>

                                <button class="mt-8 w-full border border-lux-gold text-lux-gold font-bold tracking-widest text-xs uppercase py-3 hover:bg-lux-gold hover:text-black transition-colors">
                                    RESERVE NOW
                                </button>
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
