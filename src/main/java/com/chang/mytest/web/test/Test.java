package com.chang.mytest.web.test;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Test {

	@RequestMapping(value = "/owners/{ownerId}/pets/{petId}", method = RequestMethod.GET)
	public void findPet(@PathVariable String ownerId,
			@PathVariable String petId, Model model) {
		System.out.println("findPet");
		System.out.println(ownerId);
		System.out.println(petId);
	}

	@RequestMapping(value = "/owners1/{ownerId}/pets/{petId}", method = RequestMethod.GET)
	public void findPet1(@PathVariable Map<String, String> vmap, Model model) {
		System.out.println("findPet1");
		System.out.println(vmap.get("ownerId"));
		System.out.println(vmap.get("petId"));
	}

	@RequestMapping(value = "/owners2/{ownerId}/pets/{petId}", method = RequestMethod.GET, params = "myParam=myValue")
	public void findPet2(@PathVariable String ownerId,
			@PathVariable String petId, Model model) {
		// implementation omitted
		System.out.println("findPet2");
		System.out.println(ownerId);
		System.out.println(petId);
	}

	@RequestMapping(value = "/owners/test", method = RequestMethod.GET)
	public void setupForm(@RequestParam("petId") int petId, ModelMap model) {
		System.out.println(petId);
	}

	@RequestMapping(value = "/owners/test1", method = RequestMethod.POST)
	public void setupForm1(@RequestParam("petId") int petId, ModelMap model) {
		System.out.println(petId);
	}

	@RequestMapping(value = "/something", method = RequestMethod.PUT)
	public void handle(@RequestBody String body, Writer writer)
			throws IOException {
		System.out.println(body);
		writer.write(body);
	}

	@RequestMapping(value = "/sayHelloWorld", method = RequestMethod.GET)
	@ResponseBody
	public String helloWorld() {

		return "Hello World";
	}

	@RequestMapping("/test/httpentity")
	public ResponseEntity<String> handle(HttpEntity<byte[]> requestEntity)
			throws UnsupportedEncodingException {
		String requestHeader = requestEntity.getHeaders().getFirst(
				"MyRequestHeader");
		System.out.println(requestHeader);
		byte[] requestBody = requestEntity.getBody();
		String srt=new String(requestBody,"UTF-8");
		System.out.println(srt);
		// do something with request header and body
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.set("MyResponseHeader", "MyValue");
		return new ResponseEntity<String>("Hello World", responseHeaders,
				HttpStatus.CREATED);
	}
}
