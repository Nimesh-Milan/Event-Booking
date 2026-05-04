<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login - EVENTXO</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16 flex justify-center items-center">
        <div class="bg-lux-card p-10 rounded-lg shadow-2xl w-full max-w-md border border-white/10">
            <h2 class="text-3xl font-serif text-white mb-8 text-center tracking-wider">Admin Portal</h2>
            <form action="/admin/login" method="post" class="space-y-6">
                <div>
                    <label for="username" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Username</label>
                    <input type="text" id="username" name="username" required
                           class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors">
                </div>
                <div>
                    <label for="password" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Password</label>
                    <input type="password" id="password" name="password" required
                           class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors">
                </div>
                <button type="submit"
                        class="w-full bg-lux-gold text-black font-bold tracking-widest uppercase py-4 hover:bg-lux-gold-dark transition-colors mt-4">
                    ACCESS DASHBOARD
                </button>
            </form>
        </div>
    </main>

    <jsp:include page="shared/footer.jsp" />
</body>
</html>
