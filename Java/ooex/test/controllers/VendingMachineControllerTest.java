package controllers;

import model.vending.message.Buy;
import model.vending.message.Drink;
import org.junit.Test;
import play.libs.Json;
import play.mvc.Http;
import play.mvc.Result;
import play.test.WithApplication;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;
import static play.mvc.Http.Status.OK;
import static play.test.Helpers.GET;
import static play.test.Helpers.POST;
import static play.test.Helpers.route;

public class VendingMachineControllerTest extends WithApplication {

    @Test
    public void test_all_drinks() {
        Http.RequestBuilder request = new Http.RequestBuilder()
                .method(GET)
                .uri("/vending");

        Result result = route(app, request);
        assertEquals(OK, result.status());
    }

    @Test
    public void test_buy() {
        Http.RequestBuilder request = new Http.RequestBuilder()
                .method(POST)
                .bodyJson(Json.toJson(Buy.of(Drink.COKE, 100)))
                .uri("/vending/buy");

        Result result = route(app, request);
        assertEquals(OK, result.status());
    }

    @Test
    public void test_refund() {
        Http.RequestBuilder request = new Http.RequestBuilder()
                .method(GET)
                .uri("/vending/buy");

        Result result = route(app, request);
        assertEquals(OK, result.status());
    }
}
