package dao;

import java.util.ArrayList;
import dto.Concert;

public class ConcertRepository {
	private ArrayList<Concert> listOfConcerts = new ArrayList<>();
	private ArrayList<Concert> kpopList = new ArrayList<>();
	private ArrayList<Concert> musicianList = new ArrayList<>();
	private ArrayList<Concert> operaList = new ArrayList<>();
	private ArrayList<Concert> musicalList = new ArrayList<>();
	private static ConcertRepository instance = new ConcertRepository();
	
	public static ConcertRepository getInstance() {
		return instance;
	}
	
	public ConcertRepository() {
		for (int i = 10; i < 13; i++) {
			Concert aespa = new Concert("K0001-" + i, "aespa SPECIAL EVENT \"Party-On\"", "aespa", 120000);
			aespa.setDescription("<b>공연시간 안내</b>\n" + 
					"2022년 1월 10일(금) 오후 7시\n" + 
					"2022년 1월 11일(토) 오후 5시\n" + 
					"2022년 1월 12일(일) 오후 5시\n" + 
					"<b>배송정보</b>\n" + 
					"현장 수령만 가능");
			aespa.setCategory("K-POP");
			aespa.setFilename("aespa1.jpg");
			aespa.setDate("2022/1/" + i);
			listOfConcerts.add(aespa);
			if (i == 10)
				kpopList.add(aespa);
			
		}
		
		Concert swf = new Concert("K0002", "[인천] 2021 스트릿 우먼 파이터 [ON THE STAGE]", "코카N버터, YGX, 라치카, 프라우드먼, 훅, 웨이비, 원트, 홀리뱅", 121000);
		swf.setDescription("<b>공연시간 안내</b>\n" + 
				"2021년 12월 25일 (토) 오후 1시\n" + 
				"<b>배송정보</b>\n" + 
				"본 상품은 일괄배송 상품으로 2021년 12월 07일부터 순차 배송됩니다.");
		swf.setCategory("K-POP");
		swf.setFilename("swf.jpg");
		swf.setDate("2021/12/25");
		listOfConcerts.add(swf);
		kpopList.add(swf);
		
		for (int i = 17; i < 20; i++) {
			Concert nct = new Concert("K0003-" + i, "NCT 127 2ND TOUR \'NEO CITY : SEOUL - THE LINK\'", "NCT127", 132000);
			nct.setDescription("<b>공연시간 안내</b>\n" + 
					"2021년 12월 17일 (금) 7PM\n" + 
					"2021년 12월 18일 (토) 6PM\n" + 
					"2021년 12월 19일 (일) 5PM\n" + 
					"<b>배송정보</b>\n" + 
					"본 상품은 일괄배송 상품으로 2021년 11월 26일부터 순차 배송됩니다.");
			nct.setCategory("K-POP");
			nct.setFilename("nct.jpg");
			nct.setDate("2021/12/" + i);
			listOfConcerts.add(nct);
			if (i == 17)
				kpopList.add(nct);
		}
		
		for (int i = 11; i < 13; i ++) {
			Concert yerin = new Concert("K1001-" + i, "백예린 단독공연 \"Turn on that Blue Vinyl\"", "백예린", 99000);
			yerin.setDescription("<b>공연시간 안내</b>\n" + 
					"2022년 2월 11일(토) 오후 7시\n" + 
					"2022년 2월 12일(일) 오후 5시\n" + 
					"<b>배송정보</b>\n" + 
					"현장 수령만 가능");
			yerin.setCategory("국내뮤지션");
			yerin.setFilename("yerin.jpg");
			yerin.setDate("2022/2/" + i);
			listOfConcerts.add(yerin);
			if (i == 11)
				musicianList.add(yerin);
		}
		
		Concert jsh = new Concert("K1002", "[부산] 2021 정승환의 안녕 겨울 : 다시 여기, 우리", "정승환", 121000);
		jsh.setDescription("<b>공연시간 안내</b>\n" + 
				"2021년 12월 26일(일) 오후 5시\n" + 
				"<b>배송정보</b>\n" + 
				"본 상품은 일괄배송 상품으로 2021년 12월 06일부터 순차 배송됩니다.");
		jsh.setCategory("국내뮤지션");
		jsh.setFilename("jsh.jpg");
		jsh.setDate("2021/12/26");
		listOfConcerts.add(jsh);
		musicianList.add(jsh);
		
		for (int i = 23; i < 27; i++) {
			Concert latraviata = new Concert("K2001-" + i, "국립오페라단 <라 트라비아타>", "국립오페라단", 150000);
			latraviata.setDescription("<b>공연시간 안내</b>\n" + 
					"2021년 12월 23일(목) 오후 7시 30분\n" + 
					"2021년 12월 24일(금) 오후 7시 30분\n" + 
					"2021년 12월 25일(토) 오후 3시\n" + 
					"2021년 12월 26일(일) 오후 3시\n" + 
					"<b>배송정보</b>\n" + 
					"현장 수령만 가능");
			latraviata.setCategory("오페라");
			latraviata.setFilename("latraviata.jpg");
			latraviata.setDate("2021/12/" + i);
			listOfConcerts.add(latraviata);
			if (i == 23)
				operaList.add(latraviata);
		}
		
		for (int i = 18; i < 22; i++) {
			Concert nutcracker = new Concert("K3001-" + i, "유니버설발레단 [호두까기인형]", "유니버설발레단", 80000);
			nutcracker.setDescription("<b>공연시간 안내</b>\n" + 
					"[오케스트라 LIVE 회차]\n" + 
					"> LIVE 공연일: 12.18(토) 14시 / 12.19(일) 18시\n" + 
					"[MR 회차]\n" + 
					"> MR 공연일: 12.20(토) 14시 / 12.21(일) 14시\n" + 
					"<b>배송정보</b>\n" + 
					"현장 수령만 가능");
			nutcracker.setCategory("뮤지컬");
			nutcracker.setFilename("nutcracker.jpg");
			nutcracker.setDate("2021/12/" + i);
			listOfConcerts.add(nutcracker);
			if (i == 18)
				musicalList.add(nutcracker);
		}
		
		for (int i = 17; i < 24; i++) {
			Concert littlewomen = new Concert("K3002-" + i, "뮤지컬 <작은아씨들>", "김소향, 이연경, 이혜란, 우현아, 장민제, 이재림, 허도영", 50000);
			littlewomen.setDescription("<b>공연시간 안내</b>\n" + 
					"2022년 1월 17일(월) 오후 7시 30분\n" + 
					"2022년 1월 18일(화) 오후 7시 30분\n" + 
					"2022년 1월 19일(수) 오후 3시\n" + 
					"2022년 1월 20일(목) 오후 3시\n" + 
					"2022년 1월 21일(금) 오후 5시 30분\n" + 
					"2022년 1월 22일(토) 오후 5시 30분\n" + 
					"2022년 1월 23일(일) 오후 6시\n" +  
					"<b>배송정보</b>\n" + 
					"현장 수령만 가능");
			littlewomen.setCategory("뮤지컬");
			littlewomen.setFilename("littlewomen.jpg");
			littlewomen.setDate("2022/1/" + i);
			listOfConcerts.add(littlewomen);
			if (i == 17)
				musicalList.add(littlewomen);
		}
		
		
	}
	
	public ArrayList<Concert> getAllConcert() { //존재하는 공연 모두 불러옴 (다른 날짜)
		return listOfConcerts;
	}
	
	public ArrayList<Concert> getKpopList() {
		return kpopList;
	}
	
	public ArrayList<Concert> getMusicianList() {
		return musicianList;
	}
	
	public ArrayList<Concert> getOperaList() {
		return operaList;
	}
	
	public ArrayList<Concert> getMusicalList() {
		return musicalList;
	}
	
	public ArrayList<Concert> getConcert() { //공연명이 다른 공연만 불러옴
		ArrayList<Concert> list = new ArrayList<>();
		Concert c = listOfConcerts.get(0);
		list.add(c);
		for (int i = 1; i < listOfConcerts.size(); i++) {
			if (c.getCname().equals(listOfConcerts.get(i).getCname())) {
				continue;
			}
			else {
				c = listOfConcerts.get(i);
				list.add(c);
			}
		}
		return list;
	}
	
	public Concert getConcertById(String concertId) {
		Concert concertById = null;
		
		for(int i = 0; i < listOfConcerts.size(); i++) {
			Concert concert = listOfConcerts.get(i);
			if(concert != null && concert.getConcertId() != null && concert.getConcertId().equals(concertId)) {
				concertById = concert;
				break;
			}
		}
		return concertById;
	}
	
	public void addConcert(Concert concert) {
		listOfConcerts.add(concert);
	}
}
