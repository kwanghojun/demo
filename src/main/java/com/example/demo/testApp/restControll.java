	package com.example.demo.testApp;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("rest")
public class restControll {
	  	@GetMapping("/{id}/{name}")
	  	@ResponseBody
	    public Book getBook(@PathVariable String id,@PathVariable String name) {
	  		System.out.println("id..["+id+"]");
	  		System.out.println("name..["+name+"]");
	        return findBookById(id,name);
	    }

	    private Book findBookById(String id,String name) {
	    	Book book=new Book();
	    	book.setId(id);
	    	book.setName(name);
	    	return book;
	        // ...
	    }
	    
	    @SuppressWarnings("unchecked")
	    @RequestMapping(value="/test2",method= {RequestMethod.GET,RequestMethod.POST})
	    public String restApi(HttpServletRequest request) {
	    	System.out.println("restApi..Method..!");
	  		JSONObject jObj=new JSONObject();
	  		jObj.put("A","aaaa-11");
	  		jObj.put("B","bbbb-22");
	  		jObj.put("C","cccc-33");
	    	return jObj.toJSONString();
	        // ...
	    }
}
