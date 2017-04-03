package xyz.kots.donordp.dao;

import xyz.kots.donordp.model.Bid;

import java.util.List;

public interface BidDao {
    public void addBid(Bid bid);

    public void updateBid(Bid bid);

    public void removeBid(int id);

    public Bid getBidById(int id);

    public List<Bid> listBids();
}
