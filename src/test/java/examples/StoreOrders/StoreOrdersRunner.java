package examples.StoreOrders;

import com.intuit.karate.junit5.Karate;

public class StoreOrdersRunner {
    @Karate.Test
    Karate testStoreOrders() {
        return Karate.run("create_order","get_inventory","get_order","delete_order").relativeTo(getClass());
    }
}
