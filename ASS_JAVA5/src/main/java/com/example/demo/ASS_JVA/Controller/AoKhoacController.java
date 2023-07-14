package com.example.demo.ASS_JVA.Controller;

import com.example.demo.ASS_JVA.Model.AoKhoac;
import com.example.demo.ASS_JVA.Service.IAoKhoacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/ass/ao-khoac")
public class AoKhoacController {

    @Autowired
    private IAoKhoacService service;

    @GetMapping
    public String view(Model model) {
        List<AoKhoac> list = service.getAll();
        model.addAttribute("list", list);
        return "/ass/san-pham";
    }

    @PostMapping("/add")
    public String add(Model model, AoKhoac aoKhoac) {
        service.add(aoKhoac);
        return "redirect:/ass/ao-khoac";
    }

    @GetMapping("/delete/{maAoKhoac}")
    public String delete(@PathVariable(name = "maAoKhoac") Integer ma) {
        service.delete(ma);
        return "redirect:/ass/ao-khoac";
    }

    @PostMapping("/update")
    public String update(AoKhoac aoKhoac, Integer ma) {
        service.update(ma, aoKhoac);
        return "redirect:/ass/ao-khoac";
    }

    @GetMapping("/detail/{maAoKhoac}")
    public String detail(@PathVariable(name = "maAoKhoac") Integer ma, Model model) {
        AoKhoac aoKhoac = service.detail(ma);
        model.addAttribute("ao", aoKhoac);
        return "/ass/update";
    }

    @GetMapping("/search")
    public String search(@RequestParam(name = "page", defaultValue = "1") int pageNo,
                         @RequestParam(name = "timkiem", required = false) String tenAoKhoac,
                         @RequestParam(name = "min", required = false) BigDecimal min,
                         @RequestParam(name = "max", required = false) BigDecimal max,
                         Model model) {
        if (pageNo < 1) pageNo = 1;
        Page<AoKhoac> page = null;
        if (tenAoKhoac != null) {
            page = service.search(tenAoKhoac, pageNo);
        } else if (min != null && max != null) {
            page = service.searchGia(min, max, pageNo);
        }
        List<AoKhoac> list = page.getContent();
        model.addAttribute("list", list);
        return "/ass/san-pham";
    }

}
