package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Supplier;
import com.model.Product;
import com.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	private SupplierService supplierService;
	
//	public SupplierService getSupplierService() {
//		return supplierService;
//	}
	
	//@Qualifier(value="supplierService")
//	public void setSupplierService(SupplierService ss){
//		this.supplierService = ss;
//	}
//	
//	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
//	public String getAllSupplier(Model model) {
//		model.addAttribute("supplier", new Supplier());
//		System.out.println("Hello6");
//		model.addAttribute("getAllSupplier", this.supplierService.getAllSupplier());
//		return "supplier";
//	}
	
	//For add and update supplier both
	
//    @RequestMapping("/GetAllSupplier")
//	public @ResponseBody List<Supplier>getSupplierListInJSON(){
//		return supplierService.getAllSupplier();
//	}
//	
//	@RequestMapping("/supplierListAngular")
//	public String getSuppliers(){
//		return"supplierListAngular";
//	}
	
	@RequestMapping(value={"/admin/product/supplier/add"})
	public String supplier(Model model)
	{
model.addAttribute("Product", new Product());
	
		model.addAttribute("Supplier", new Supplier());


model.addAttribute("suppliers", this.supplierService.getSuppliers());
model.addAttribute("supplierList", this.supplierService.getAllSupplier());
		
		
		return "Supplier";
	}
	
	@RequestMapping(value = {"/admin/product/supplier/add"}, method=RequestMethod.POST)
	public String addSupplier(@Valid @ModelAttribute("Supplier")Supplier supplier, BindingResult results, Model model)
	{
		if(results.hasErrors())
		{
			return "Supplier";
		}
		
		this.supplierService.addSupplier(supplier);

model.addAttribute("suppliers", this.supplierService.getSuppliers());
model.addAttribute("supplierList", this.supplierService.getAllSupplier());
		
		return "redirect:/admin/product/supplier/add" ;
	}
	
/*   
 *  DELETE and UPDATE 
 */
	
	@RequestMapping(value="/admin/product/supplier/delete/{id}")
	public String deleteSupplier(@PathVariable("id")String id, ModelMap model){
		this.supplierService.deleteSupplier(id);
		
		return "redirect:/admin/product/supplier/add";
	}
	
	@RequestMapping(value="/admin/product/supplier/edit/{id}")
	public String editSupplier(@PathVariable("id")String id,Model model){
		model.addAttribute("Supplier", this.supplierService.getSupplierById(id));
		model.addAttribute("supplierList", this.supplierService.getAllSupplier());
		return "Supplier";
	}

}

	
	//For add and update supplier both
//	@RequestMapping(value= "/admin/supplier/add", method = RequestMethod.POST)
//	public String addSupplier(@ModelAttribute("supplier") Supplier s){
//		
//		if(s.getId() == 0){
//			//new Supplier, add it
//			this.supplierService.addSupplier(s);
//		}else{
//			//existing Supplier, call update
//			this.supplierService.updateSupplier(s);
//		}
//				
//		return "redirect:/suppliers";
//	}
//	
//	@RequestMapping("/admin/remove/{id}")
//    public String removeSupplier(@PathVariable(value="id") int id){
//		
//        this.supplierService.deleteSupplier(id);
//         
//		return "supplier";
//      }
// 
//    @RequestMapping("/admin/edit/{id}")
//    public String editSupplier(@PathVariable("id") int id, Model model){
//        model.addAttribute("supplier", this.supplierService.getSupplierById(id));
//        model.addAttribute("getAllSupplier", this.supplierService.getAllSupplier());
//        return "supplier";
//    }
	
