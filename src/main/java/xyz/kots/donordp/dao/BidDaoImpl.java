package xyz.kots.donordp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import xyz.kots.donordp.model.Bid;

import java.util.List;

@Repository
public class BidDaoImpl implements BidDao {
    private static final Logger logger = LoggerFactory.getLogger(BidDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBid(Bid bid) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(bid);
        logger.info("Bid successfully saved. Bid details: " + bid);
    }

    @Override
    public void updateBid(Bid bid) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(bid);
        logger.info("Bid successfully update. Bid details: " + bid);
    }

    @Override
    public void removeBid(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Bid bid = (Bid) session.load(Bid.class, new Integer(id));

        if(bid!=null){
            session.delete(bid);
        }
        logger.info("Bid successfully removed. Bid details: " + bid);
    }

    @Override
    public Bid getBidById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        Bid bid = (Bid) session.load(Bid.class, new Integer(id));
        logger.info("Bid successfully loaded. Bid details: " + bid);

        return bid;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Bid> listBids() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Bid> bidList = session.createQuery("from Bid").list();

        for(Bid bid: bidList){
            logger.info("Bid list: " + bid);
        }

        return bidList;
    }
}
