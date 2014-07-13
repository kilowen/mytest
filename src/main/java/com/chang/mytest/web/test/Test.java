package com.chang.mytest.web.test;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Test {

	@RequestMapping(value="/owners/{ownerId}/pets/{petId}", method=RequestMethod.GET)
	public void findPet(@PathVariable String ownerId, @PathVariable String petId, Model model){
		System.out.println("findPet");
		System.out.println(ownerId);
		System.out.println(petId);
	}
	
	@RequestMapping(value="/owners1/{ownerId}/pets/{petId}", method=RequestMethod.GET)
	public void findPet1(@PathVariable Map<String,String> vmap, Model model){
		System.out.println("findPet1");
		System.out.println(vmap.get("ownerId"));
		System.out.println(vmap.get("petId"));
	}
	
	@RequestMapping(value = "/owners2/{ownerId}/pets/{petId}", method = RequestMethod.GET, params="myParam=myValue")
    public void findPet2(@PathVariable String ownerId, @PathVariable String petId, Model model) {
        // implementation omitted
		System.out.println("findPet2");
		System.out.println(ownerId);
		System.out.println(petId);
    }
	
	@RequestMapping(method = RequestMethod.GET)
	public void setupForm(@RequestParam("petId") int petId, ModelMap model) {
		System.out.println(petId);
	}
}
