package xyz.kots.donordp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import xyz.kots.donordp.model.Bid;
import xyz.kots.donordp.service.BidService;

@Controller
public class BidController {
    private BidService bidService;

    @Autowired(required = true)
    @Qualifier(value = "bidService")
    public void setBidService(BidService bidService) {
        this.bidService = bidService;
    }

    @RequestMapping(value = "bids", method = RequestMethod.GET)
    public String listBids(Model model){
        model.addAttribute("bid", new Bid());
        model.addAttribute("listBids", this.bidService.listBids());

        return "bids";
    }

    @RequestMapping(value = "/bids/add", method = RequestMethod.POST)
    public String addBid(@ModelAttribute("bid") Bid bid){
        if(bid.getId() == 0){
            this.bidService.addBid(bid);
        }else {
            this.bidService.updateBid(bid);
        }

        return "redirect:/bids";
    }

    @RequestMapping("/remove/{id}")
    public String removeBid(@PathVariable("id") int id){
        this.bidService.removeBid(id);

        return "redirect:/bids";
    }

    @RequestMapping("edit/{id}")
    public String editBid(@PathVariable("id") int id, Model model){
        model.addAttribute("bid", this.bidService.getBidById(id));
        model.addAttribute("listBids", this.bidService.listBids());

        return "bids";
    }

    @RequestMapping("biddetails/{id}")
    public String bidDetailes(@PathVariable("id") int id, Model model){
        model.addAttribute("bid", this.bidService.getBidById(id));

        return "biddetails";
    }
}
