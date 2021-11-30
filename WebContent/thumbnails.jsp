<%@ page contentType="text/html; charset=utf-8"%>

<div id="carouselExampleCaptions" class="carousel slide"
	data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleCaptions" data-slide-to="0"
			class="active"></li>
		<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
		<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner w-100" role="listbox">
		
		<div class="carousel-item active">
			<a href="concert.jsp?id=K0001-10"><img src="./resources/image/aespa_sq.jpg" class="d-block w-100"></a>
			<div class="carousel-caption d-none d-md-block">
				<h4>aespa</h4>
				<h6>aespa: Party-on</h6>
				<p>2022년 1월 10-12일</p>
			</div>
		</div>
		<div class="carousel-item">
			<a href="concert.jsp?id=K1001-11"><img src="./resources/image/yerin_sq.jpg" class="d-block w-100"></a>
			<div class="carousel-caption d-none d-md-block">
				<h4>백예린</h4>
				<h6>Turn on that Blue Vinyl</h6>
				<p>2022년 2월 11-12일</p>
			</div>
		</div>
		<div class="carousel-item">
			<a href="concert.jsp?id=K3002-17"><img src="./resources/image/lw_sq.jpg" class="d-block w-100"></a>
			<div class="carousel-caption d-none d-md-block">
				<h4>작은 아씨들</h4>
				<h6>세종문화회관 M씨어터</h6>
				<p>2022년 1월 17-23일</p>
			</div>
		</div>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleCaptions"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
		role="button" data-slide="next"> <span
		class="carousel-control-next-icon" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>