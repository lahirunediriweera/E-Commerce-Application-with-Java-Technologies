/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class kidssecbackend {
    // Simulated database of clothing items
    private static List<ClothingItem> clothingItems = new ArrayList<>();
    private static Map<String, Integer> itemStocks = new HashMap<>();

    // Initialize some sample clothing items and stocks
    static {
        addClothingItem(new ClothingItem("Cool Cat T-Shirt", "kid-clothing-1.jpg", 15.99), 10);
        addClothingItem(new ClothingItem("Rainbow Unicorn Dress", "kid-clothing-2.jpg", 24.99), 15);
        // Add more items here
    }

    // Method to get all clothing items
    public static List<ClothingItem> getAllClothingItems() {
        return clothingItems;
    }

    // Method to add a new clothing item
    public static void addClothingItem(ClothingItem item, int stock) {
        clothingItems.add(item);
        itemStocks.put(item.getName(), stock);
    }

    // Method to remove a clothing item
    public static void removeClothingItem(String itemName) {
        for (ClothingItem item : clothingItems) {
            if (item.getName().equals(itemName)) {
                clothingItems.remove(item);
                itemStocks.remove(itemName);
                break;
            }
        }
    }

    // Method to update the price of a clothing item
    public static void updatePrice(String itemName, double newPrice) {
        for (ClothingItem item : clothingItems) {
            if (item.getName().equals(itemName)) {
                item.setPrice(newPrice);
                break;
            }
        }
    }

    // Method to check the stock of a clothing item
    public static int checkStock(String itemName) {
        return itemStocks.getOrDefault(itemName, 0);
    }

    // Method to apply discount to a clothing item
    public static void applyDiscount(String itemName, double discountPercentage) {
        for (ClothingItem item : clothingItems) {
            if (item.getName().equals(itemName)) {
                double discountedPrice = item.getPrice() * (1 - discountPercentage / 100);
                item.setPrice(discountedPrice);
                break;
            }
        }
    }
}
