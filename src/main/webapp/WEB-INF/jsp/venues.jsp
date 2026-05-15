<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Venues - EVENTXO</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />


    <main class="flex-grow container mx-auto px-4 py-16">
        <div class="text-center mb-16">
            <h2 class="text-lux-gold tracking-widest text-sm font-bold uppercase mb-2">Exclusive Spaces</h2>
            <h1 class="text-5xl font-serif text-white shadow-sm">Our Venues</h1>
        </div>

        <c:choose>
            <c:when test="${empty venues}">
                <div class="text-center text-gray-400 mt-10">
                    <p class="text-xl">No venues are currently available. Please check back later.</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    <c:forEach var="venue" items="${venues}">
                        <div class="bg-lux-card border border-white/10 group flex flex-col">
                            <div class="p-8 flex flex-col flex-grow">
                                <div class="mb-6">
                                    <h3 class="text-2xl font-serif text-white group-hover:text-lux-gold transition-colors duration-300">
                                        <c:out value="${venue.locationName}" />
                                    </h3>
                                </div>

                                <div class="mt-auto pt-6 border-t border-white/10 space-y-4">
                                    <div class="flex items-center text-gray-400 text-sm tracking-wide">
                                        <svg class="w-4 h-4 mr-3 text-lux-gold" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                                        </svg>
                                        <span>Capacity: <c:out value="${venue.capacity}" /> people</span>
                                    </div>

                                    <div class="flex items-center text-gray-400 text-sm tracking-wide">
                                        <svg class="w-4 h-4 mr-3 text-lux-gold" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                        </svg>
                                        <span>$<c:out value="${venue.pricePerHour}" /> / hr</span>
                                    </div>
                                </div>

                                <button class="mt-8 w-full border border-lux-gold text-lux-gold font-bold tracking-widest text-xs uppercase py-3 hover:bg-lux-gold hover:text-black transition-colors">
                                    INQUIRE
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
