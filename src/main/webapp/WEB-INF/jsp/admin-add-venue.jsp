<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Venue - EVENTXO Admin</title>
</head>
<body class="bg-lux-dark text-white font-sans min-h-screen flex flex-col">
    <jsp:include page="shared/header.jsp" />

    <main class="flex-grow container mx-auto px-4 py-16 flex justify-center items-center">
        <div class="bg-lux-card p-10 rounded-lg shadow-2xl w-full max-w-md border border-white/10">
            <h2 class="text-3xl font-serif text-white mb-8 text-center tracking-wider">Add New Venue</h2>
            <form action="/admin/add-venue" method="post" class="space-y-6">
                <div>
                    <label for="locationName" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Location Name</label>
                    <input type="text" id="locationName" name="locationName" required
                           class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors">
                </div>
                <div>
                    <label for="capacity" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Capacity</label>
                    <input type="number" id="capacity" name="capacity" min="1" required
                           class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors">
                </div>
                <div>
                    <label for="pricePerHour" class="block text-xs font-medium text-gray-400 uppercase tracking-wider mb-2">Price Per Hour ($)</label>
                    <input type="number" id="pricePerHour" name="pricePerHour" step="0.01" min="0" required
                           class="block w-full px-4 py-3 bg-black/50 border border-white/10 rounded-none text-white focus:outline-none focus:border-lux-gold focus:ring-1 focus:ring-lux-gold transition-colors">
                </div>
                <button type="submit"
                        class="w-full bg-lux-gold text-black font-bold tracking-widest uppercase py-4 hover:bg-lux-gold-dark transition-colors mt-4">
                    SAVE VENUE
                </button>
            </form>
        </div>
    </main>

    <jsp:include page="shared/footer.jsp" />
</body>
</html>