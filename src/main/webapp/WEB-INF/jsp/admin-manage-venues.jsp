<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Venues - Admin</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />


    <main class="flex-grow container mx-auto px-4 py-16">
        <div class="flex justify-between items-center mb-12 border-b border-white/10 pb-6">
            <h1 class="text-4xl font-serif text-white shadow-sm tracking-wide">Manage Venues</h1>
            <a href="/admin/add-venue" class="bg-lux-gold text-black font-bold tracking-widest text-xs uppercase px-6 py-3 hover:bg-lux-gold-dark transition-colors inline-block">
                + ADD VENUE
            </a>
        </div>

        <c:choose>
            <c:when test="${empty venues}">
                <div class="text-center text-gray-400 mt-10 bg-lux-card p-10 rounded-lg shadow-xl border border-white/10 max-w-3xl mx-auto">
                    <p class="text-lg font-serif tracking-wide">No venues configured.</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="overflow-x-auto shadow-2xl rounded-lg border border-white/10">
                    <table class="w-full text-left border-collapse">
                        <thead>
                            <tr class="bg-black/80 border-b border-white/10">
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Venue ID</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Location Name</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Capacity</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Price/Hr</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="bg-lux-card divide-y divide-white/5">
                            <c:forEach var="venue" items="${venues}">
                                <tr class="hover:bg-black/40 transition-colors duration-200 group">
                                    <td class="py-5 px-6 text-sm text-gray-400 font-mono tracking-wider truncate max-w-xs" title="${venue.venueId}"><c:out value="${venue.venueId}" /></td>
                                    <td class="py-5 px-6 text-lg font-serif text-lux-gold tracking-wide"><c:out value="${venue.locationName}" /></td>
                                    <td class="py-5 px-6 text-sm text-gray-300 tracking-wide">
                                        <div class="flex items-center space-x-3">
                                            <span><c:out value="${venue.capacity}" /> pax</span>
                                            <button class="text-[10px] uppercase tracking-widest text-gray-500 hover:text-white transition-colors" title="Edit Capacity">
                                                EDIT
                                            </button>
                                        </div>
                                    </td>
                                    <td class="py-5 px-6 text-sm text-white font-medium tracking-wide">$<c:out value="${venue.pricePerHour}" /></td>
                                    <td class="py-5 px-6 text-sm text-center flex justify-center space-x-4">
                                        <button class="text-xs uppercase tracking-widest font-bold text-gray-400 hover:text-white transition-colors">
                                            RATES
                                        </button>
                                        <button class="text-xs uppercase tracking-widest font-bold text-red-500 hover:text-red-400 transition-colors">
                                            DELETE
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