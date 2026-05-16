package com.sliit.eventbooking.controllers;

import com.sliit.eventbooking.models.Ticket;
import com.sliit.eventbooking.models.Admin;
import com.sliit.eventbooking.utils.FileHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    @GetMapping("/admin")
    public String showAdminLogin() {
        return "admin-login";
    }

    @GetMapping("/admin/dashboard")
    public String showAdminDashboard(Model model) {
        List<String> bookings = FileHandler.readAllRecords("bookings.txt");
        List<String> inquiries = FileHandler.readAllRecords("inquiries.txt");

        model.addAttribute("totalBookings", bookings.size());
        model.addAttribute("totalInquiries", inquiries.size());

        return "admin-dashboard";
    }

    @GetMapping("/admin/bookings")
    public String viewAllBookings(Model model) {
        List<String> bookingRecords = FileHandler.readAllRecords("bookings.txt");
        List<Ticket> bookings = new ArrayList<>();

        for (String record : bookingRecords) {
            String[] parts = record.split(",");
            if (parts.length == 4) {
                try {
                    String ticketId = parts[0];
                    String customerName = parts[1];
                    String eventName = parts[2];
                    int quantity = Integer.parseInt(parts[3]);
                    bookings.add(new Ticket(ticketId, customerName, eventName, quantity));
                } catch (NumberFormatException e) {
                    System.err.println("Error parsing quantity for ticket: " + record);
                }
            }
        }

        model.addAttribute("bookings", bookings);
        return "admin-view-bookings";
    }

    @GetMapping("/admin/manage-staff")
    public String manageStaff(Model model) {
        List<String> staffRecords = FileHandler.readAllRecords("admins.txt");
        List<Admin> staffList = new ArrayList<>();

        for (String record : staffRecords) {
            String[] parts = record.split(",");
            if (parts.length == 3) {
                String adminId = parts[0];
                String username = parts[1];
                String roleLevel = parts[2];
                staffList.add(new Admin(adminId, username, roleLevel));
            }
        }

        model.addAttribute("staffList", staffList);
        return "admin-manage-staff";
    }
}