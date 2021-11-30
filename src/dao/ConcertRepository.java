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
			aespa.setDescription("<b>�����ð� �ȳ�</b>\n" + 
					"2022�� 1�� 10��(��) ���� 7��\n" + 
					"2022�� 1�� 11��(��) ���� 5��\n" + 
					"2022�� 1�� 12��(��) ���� 5��\n" + 
					"<b>�������</b>\n" + 
					"���� ���ɸ� ����");
			aespa.setCategory("K-POP");
			aespa.setFilename("aespa1.jpg");
			aespa.setDate("2022/1/" + i);
			listOfConcerts.add(aespa);
			if (i == 10)
				kpopList.add(aespa);
			
		}
		
		Concert swf = new Concert("K0002", "[��õ] 2021 ��Ʈ�� ��� ������ [ON THE STAGE]", "��īN����, YGX, ��ġī, �������, ��, ���̺�, ��Ʈ, Ȧ����", 121000);
		swf.setDescription("<b>�����ð� �ȳ�</b>\n" + 
				"2021�� 12�� 25�� (��) ���� 1��\n" + 
				"<b>�������</b>\n" + 
				"�� ��ǰ�� �ϰ���� ��ǰ���� 2021�� 12�� 07�Ϻ��� ���� ��۵˴ϴ�.");
		swf.setCategory("K-POP");
		swf.setFilename("swf.jpg");
		swf.setDate("2021/12/25");
		listOfConcerts.add(swf);
		kpopList.add(swf);
		
		for (int i = 17; i < 20; i++) {
			Concert nct = new Concert("K0003-" + i, "NCT 127 2ND TOUR \'NEO CITY : SEOUL - THE LINK\'", "NCT127", 132000);
			nct.setDescription("<b>�����ð� �ȳ�</b>\n" + 
					"2021�� 12�� 17�� (��) 7PM\n" + 
					"2021�� 12�� 18�� (��) 6PM\n" + 
					"2021�� 12�� 19�� (��) 5PM\n" + 
					"<b>�������</b>\n" + 
					"�� ��ǰ�� �ϰ���� ��ǰ���� 2021�� 11�� 26�Ϻ��� ���� ��۵˴ϴ�.");
			nct.setCategory("K-POP");
			nct.setFilename("nct.jpg");
			nct.setDate("2021/12/" + i);
			listOfConcerts.add(nct);
			if (i == 17)
				kpopList.add(nct);
		}
		
		for (int i = 11; i < 13; i ++) {
			Concert yerin = new Concert("K1001-" + i, "�鿹�� �ܵ����� \"Turn on that Blue Vinyl\"", "�鿹��", 99000);
			yerin.setDescription("<b>�����ð� �ȳ�</b>\n" + 
					"2022�� 2�� 11��(��) ���� 7��\n" + 
					"2022�� 2�� 12��(��) ���� 5��\n" + 
					"<b>�������</b>\n" + 
					"���� ���ɸ� ����");
			yerin.setCategory("����������");
			yerin.setFilename("yerin.jpg");
			yerin.setDate("2022/2/" + i);
			listOfConcerts.add(yerin);
			if (i == 11)
				musicianList.add(yerin);
		}
		
		Concert jsh = new Concert("K1002", "[�λ�] 2021 ����ȯ�� �ȳ� �ܿ� : �ٽ� ����, �츮", "����ȯ", 121000);
		jsh.setDescription("<b>�����ð� �ȳ�</b>\n" + 
				"2021�� 12�� 26��(��) ���� 5��\n" + 
				"<b>�������</b>\n" + 
				"�� ��ǰ�� �ϰ���� ��ǰ���� 2021�� 12�� 06�Ϻ��� ���� ��۵˴ϴ�.");
		jsh.setCategory("����������");
		jsh.setFilename("jsh.jpg");
		jsh.setDate("2021/12/26");
		listOfConcerts.add(jsh);
		musicianList.add(jsh);
		
		for (int i = 23; i < 27; i++) {
			Concert latraviata = new Concert("K2001-" + i, "���������� <�� Ʈ����Ÿ>", "����������", 150000);
			latraviata.setDescription("<b>�����ð� �ȳ�</b>\n" + 
					"2021�� 12�� 23��(��) ���� 7�� 30��\n" + 
					"2021�� 12�� 24��(��) ���� 7�� 30��\n" + 
					"2021�� 12�� 25��(��) ���� 3��\n" + 
					"2021�� 12�� 26��(��) ���� 3��\n" + 
					"<b>�������</b>\n" + 
					"���� ���ɸ� ����");
			latraviata.setCategory("�����");
			latraviata.setFilename("latraviata.jpg");
			latraviata.setDate("2021/12/" + i);
			listOfConcerts.add(latraviata);
			if (i == 23)
				operaList.add(latraviata);
		}
		
		for (int i = 18; i < 22; i++) {
			Concert nutcracker = new Concert("K3001-" + i, "���Ϲ����߷��� [ȣ�α������]", "���Ϲ����߷���", 80000);
			nutcracker.setDescription("<b>�����ð� �ȳ�</b>\n" + 
					"[���ɽ�Ʈ�� LIVE ȸ��]\n" + 
					"> LIVE ������: 12.18(��) 14�� / 12.19(��) 18��\n" + 
					"[MR ȸ��]\n" + 
					"> MR ������: 12.20(��) 14�� / 12.21(��) 14��\n" + 
					"<b>�������</b>\n" + 
					"���� ���ɸ� ����");
			nutcracker.setCategory("������");
			nutcracker.setFilename("nutcracker.jpg");
			nutcracker.setDate("2021/12/" + i);
			listOfConcerts.add(nutcracker);
			if (i == 18)
				musicalList.add(nutcracker);
		}
		
		for (int i = 17; i < 24; i++) {
			Concert littlewomen = new Concert("K3002-" + i, "������ <�����ƾ���>", "�����, �̿���, ������, ������, �����, ���縲, �㵵��", 50000);
			littlewomen.setDescription("<b>�����ð� �ȳ�</b>\n" + 
					"2022�� 1�� 17��(��) ���� 7�� 30��\n" + 
					"2022�� 1�� 18��(ȭ) ���� 7�� 30��\n" + 
					"2022�� 1�� 19��(��) ���� 3��\n" + 
					"2022�� 1�� 20��(��) ���� 3��\n" + 
					"2022�� 1�� 21��(��) ���� 5�� 30��\n" + 
					"2022�� 1�� 22��(��) ���� 5�� 30��\n" + 
					"2022�� 1�� 23��(��) ���� 6��\n" +  
					"<b>�������</b>\n" + 
					"���� ���ɸ� ����");
			littlewomen.setCategory("������");
			littlewomen.setFilename("littlewomen.jpg");
			littlewomen.setDate("2022/1/" + i);
			listOfConcerts.add(littlewomen);
			if (i == 17)
				musicalList.add(littlewomen);
		}
		
		
	}
	
	public ArrayList<Concert> getAllConcert() { //�����ϴ� ���� ��� �ҷ��� (�ٸ� ��¥)
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
	
	public ArrayList<Concert> getConcert() { //�������� �ٸ� ������ �ҷ���
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
