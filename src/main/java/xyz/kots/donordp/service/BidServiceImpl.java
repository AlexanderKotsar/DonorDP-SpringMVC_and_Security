package xyz.kots.donordp.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import xyz.kots.donordp.dao.BidDao;
import xyz.kots.donordp.model.Bid;

import java.util.List;

@Service
public class BidServiceImpl implements BidService {
    private BidDao bidDao;

    public void setBidDao(BidDao bidDao) {
        this.bidDao = bidDao;
    }

    @Override
    @Transactional
    public void addBid(Bid bid) {
        this.bidDao.addBid(bid);
    }

    @Override
    @Transactional
    public void updateBid(Bid bid) {
        this.bidDao.updateBid(bid);
    }

    @Override
    @Transactional
    public void removeBid(int id) {
        this.bidDao.removeBid(id);
    }

    @Override
    @Transactional
    public Bid getBidById(int id) {
        return this.bidDao.getBidById(id);
    }

    @Override
    @Transactional
    public List<Bid> listBids() {
        return this.bidDao.listBids();
    }
}
