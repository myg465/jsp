function check(){
			var id_ch=(/^(?=.*[a-zA-Z])(?=.*[0-9]).{1,16}$/);
			var id_ch2=(/^(?=.*[가-힣])(?=.*[~!@#$%^&*()_+|{}:<>?]).{1,16}$/);
			var name_ch=/^[가-힣]{1,}$/;
			
			
			if(!(id_ch.test(form.id.value))){
				alert("아이디를 다시 입력하세요.");
				form.id.value="";
				form.id.focus();
				return false;
				
			}
			if(id_ch2.test(form.id.value)){
				alert("아이디를 다시 입력하세요.");
				form.id.value="";
				form.id.focus();
				return false;
			}
			
			
			if(form.pw.value.length<5){
				alert("비밀번호는 5자 이상으로 입력하세요.");
				form.pw.focus();
				return false;
			}
			if(!(name_ch.test(form.name.value))){
				alert("이름은 한글만 입력하세요.");
				form.name.value="";
				form.name.focus();
				return false;
			}
			
		}