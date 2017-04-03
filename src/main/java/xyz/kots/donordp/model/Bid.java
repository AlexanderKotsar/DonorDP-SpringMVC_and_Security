package xyz.kots.donordp.model;

import javax.persistence.*;

@Entity
@Table(name = "bids")
public class Bid {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "BID_USER_NAME")
    private String bidUserName;

    @Column(name = "BID_HOSPITAL")
    private String bidHospital;

    @Column(name = "BID_CONTACTS")
    private String bidContacts;

    @Column(name = "BID_QUANTITY")
    private String bidQuantity;

    @Column(name = "BID_INFO")
    private String bidInfo;

    @Column(name = "BID_GROUP")
    private String bidGroup;

    @Column(name = "BID_PRICE")
    private String bidPrice;

    @Column(name = "BID_COMMENTS")
    private String bidComments;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBidUserName() {
        return bidUserName;
    }

    public void setBidUserName(String bidUserName) {
        this.bidUserName = bidUserName;
    }

    public String getBidHospital() {
        return bidHospital;
    }

    public void setBidHospital(String bidHospital) {
        this.bidHospital = bidHospital;
    }

    public String getBidContacts() {
        return bidContacts;
    }

    public void setBidContacts(String bidContacts) {
        this.bidContacts = bidContacts;
    }

    public String getBidQuantity() {
        return bidQuantity;
    }

    public void setBidQuantity(String bidQuantity) {
        this.bidQuantity = bidQuantity;
    }

    public String getBidInfo() {
        return bidInfo;
    }

    public void setBidInfo(String bidInfo) {
        this.bidInfo = bidInfo;
    }

    public String getBidGroup() {
        return bidGroup;
    }

    public void setBidGroup(String bidGroup) {
        this.bidGroup = bidGroup;
    }

    public String getBidPrice() {
        return bidPrice;
    }

    public void setBidPrice(String bidPrice) {
        this.bidPrice = bidPrice;
    }

    public String getBidComments() {
        return bidComments;
    }

    public void setBidComments(String bidComments) {
        this.bidComments = bidComments;
    }

    @Override
    public String toString() {
        return "Bid{" +
                "id=" + id +
                ", bidUserName='" + bidUserName + '\'' +
                ", bidContacts='" + bidContacts + '\'' +
                ", bidQuantity=" + bidQuantity +
                ", bidInfo='" + bidInfo + '\'' +
                ", bidGroup='" + bidGroup + '\'' +
                ", bidPrice=" + bidPrice +
                ", bidComments=" + bidComments +
                '}';
    }
}
