function check(){
			var name_ch=/^[가-힣]{1,}$/;
			var id_ch=(/^(?=.*[a-zA-Z])(?=.*[0-9]).{1,16}$/);
			var pw_ch=(/^(?=.*[!@#$%^&*()_+|~])(?=.*[0-9]).{1,16}$/);
			
			
			if(!(name_ch.test(join_m.m_name.value))){
				alert("이름은 한글만 입력하세요.");
				join_m.m_name.value="";
				join_m.m_name.focus();
				return false;
			}
			
			if(!(id_ch.test(join_m.m_id.value))){
				alert("아이디를 다시 입력하세요.");
				join_m.m_id.value="";
				join_m.m_id.focus();
				return false;
			}
			
			if(!(pw_ch.test(join_m.m_pw.value))){
				alert("비밀번호를 다시 입력하세요.");
				join_m.m_pw.value="";
				join_m.m_pw.focus();
				return false;
			}
			
			if(join_m.m_pw.value!=join_m.m_pw2.value){
				alert("비밀번호가 일치하지 않았습니다.");
				join_m.m_pw2.value="";
				join_m.m_pw2.focus();
				return false;
			}
			
			
			
			return true;
			
		}