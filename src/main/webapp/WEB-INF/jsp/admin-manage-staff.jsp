<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Staff - Admin</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16">
        <div class="text-center mb-12 border-b border-white/10 pb-6">
            <h1 class="text-4xl font-serif text-white shadow-sm tracking-wide">Manage Staff</h1>
        </div>

        <!-- Add Admin Form -->
        <div class="bg-lux-card p-8 rounded-lg shadow-xl border border-white/10 mb-12 max-w-3xl mx-auto">
            <h2 class="text-xl font-serif text-white mb-6 tracking-wide">Add New Admin</h2>
            <form action="/admin/add-staff" method="post" class="grid grid-cols-1 md:grid-cols-3 gap-6 items-end">
                <div>
                    <label for="username" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Username</label>
                    <input type="text" id="username" name="username" required
                           class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors">
                </div>
                <div>
                    <label for="roleLevel" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Role Level</label>
                    <select id="roleLevel" name="roleLevel" required
                            class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors appearance-none">
                        <option value="Admin" class="bg-lux-card text-white">Admin</option>
                        <option value="Super Admin" class="bg-lux-card text-white">Super Admin</option>
                        <option value="Moderator" class="bg-lux-card text-white">Moderator</option>
                    </select>
                </div>
                <div>
                    <button type="submit"
                            class="w-full bg-lux-gold text-black font-bold tracking-widest uppercase py-3 hover:bg-lux-gold-dark transition-colors">
                        ADD STAFF
                    </button>
                </div>
            </form>
        </div>

        <c:choose>
            <c:when test="${empty staffList}">
                <div class="text-center text-gray-400 mt-10 bg-lux-card p-10 rounded-lg shadow-xl border border-white/10 max-w-3xl mx-auto">
                    <p class="text-lg font-serif tracking-wide">No staff members found.</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="overflow-x-auto shadow-2xl rounded-lg border border-white/10">
                    <table class="w-full text-left border-collapse">
                        <thead>
                            <tr class="bg-black/80 border-b border-white/10">
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Admin ID</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Username</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider">Role Level</th>
                                <th class="py-5 px-6 text-xs font-medium text-gray-400 uppercase tracking-wider text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody class="bg-lux-card divide-y divide-white/5">
                            <c:forEach var="staff" items="${staffList}">
                                <tr class="hover:bg-black/40 transition-colors duration-200 group">
                                    <td class="py-5 px-6 text-sm text-gray-400 font-mono tracking-wider"><c:out value="${staff.adminId}" /></td>
                                    <td class="py-5 px-6 text-sm text-white font-medium tracking-wide"><c:out value="${staff.username}" /></td>
                                    <td class="py-5 px-6 text-sm">
                                        <c:choose>
                                            <c:when test="${staff.roleLevel == 'Super Admin'}">
                                                <span class="text-lux-gold font-bold tracking-wide uppercase text-xs">
                                                    <c:out value="${staff.roleLevel}" />
                                                </span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="text-gray-400 tracking-wide uppercase text-xs">
                                                    <c:out value="${staff.roleLevel}" />
                                                </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="py-5 px-6 text-sm text-center">
                                        <button class="text-xs uppercase tracking-widest font-bold text-red-500 hover:text-white border border-red-500/50 hover:bg-red-600/80 hover:border-red-600 py-2 px-4 transition-all duration-200">
                                            REMOVE
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
