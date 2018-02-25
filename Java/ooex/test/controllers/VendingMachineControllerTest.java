package controllers;

import org.junit.Test;
import play.mvc.Http;
import play.mvc.Result;
import play.test.Helpers;
import play.test.WithApplication;

import static org.junit.Assert.*;
import static play.mvc.Http.Status.OK;
import static play.test.Helpers.*;

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
                .uri("/vending/buy/0/100");

        Result result = route(app, request);
        assertEquals(OK, result.status());
    }

    @Test
    public void test_refund() {
        Http.RequestBuilder request = new Http.RequestBuilder()
                .method(POST)
                .uri("/vending/buy/0/90");

        Result result = route(app, request);
        assertEquals(OK, result.status());

        request = new Http.RequestBuilder()
                .method(GET)
                .uri("/vending/buy");

        result = route(app, request);
        assertEquals(OK, result.status());
        assertEquals(Helpers.contentAsString(result), "{\"paybacks\":[{\"value\":90}]}");
    }
}
