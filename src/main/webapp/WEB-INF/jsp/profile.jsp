<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile - EVENTXO</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16 flex justify-center items-center">
        <div class="bg-lux-card p-10 rounded-lg shadow-2xl w-full max-w-lg border border-white/10">
            <div class="flex flex-col items-center mb-10">
                <!-- Profile Picture Avatar -->
                <div class="w-24 h-24 bg-black rounded-full flex items-center justify-center border border-lux-gold mb-6 shadow-inner">
                    <span class="text-3xl text-lux-gold font-serif"><c:out value="${userInitial}" /></span>
                </div>
                <h2 class="text-4xl font-serif text-white text-center mb-2"><c:out value="${userName}" /></h2>
                <p class="text-gray-400 text-sm tracking-wide"><c:out value="${userEmail}" /></p>
            </div>

            <c:if test="${not empty successMessage}">
                <div class="bg-green-900/30 border border-green-500/50 text-green-400 px-4 py-4 rounded mb-8 text-center text-sm font-semibold tracking-wide">
                    <c:out value="${successMessage}" />
                </div>
            </c:if>

            <div class="border-t border-white/10 pt-8 space-y-6">
                <div class="flex justify-between items-center pb-4 border-b border-white/5">
                    <span class="text-xs font-medium text-gray-400 uppercase tracking-wider">Member Since</span>
                    <span class="text-white text-sm font-semibold tracking-wide"><c:out value="${memberSince}" /></span>
                </div>
                <div class="flex justify-between items-center pb-4 border-b border-white/5">
                    <span class="text-xs font-medium text-gray-400 uppercase tracking-wider">Tickets Booked</span>
                    <span class="text-white text-sm font-semibold tracking-wide">0</span>
                </div>
                <div class="flex justify-between items-center pb-4 border-b border-white/5">
                    <span class="text-xs font-medium text-gray-400 uppercase tracking-wider">Account Status</span>
                    <span class="text-lux-gold text-sm font-semibold tracking-wide">ACTIVE</span>
                </div>
            </div>

            <div class="mt-10">
                <button class="w-full border border-lux-gold text-lux-gold font-bold tracking-widest text-xs uppercase py-4 hover:bg-lux-gold hover:text-black transition-colors">
                    EDIT PROFILE
                </button>
            </div>
        </div>
    </main>

    <jsp:include page="shared/footer.jsp" />
</body>
</html>