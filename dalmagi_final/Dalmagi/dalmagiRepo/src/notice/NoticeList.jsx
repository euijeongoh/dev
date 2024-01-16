import React, { useState } from 'react';
import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import styled from 'styled-components';

const StyledNoticeListDiv = styled.div`
    width: 100%;
    height: 100%;
    display: grid;
    grid-template-rows: 0.3fr 1.5fr 1fr 8fr 2fr 1.5fr;
    place-items: center center;
    padding: 3%;
    & > div {
        width: 100%;
        height: 100%;
        display: grid;
        place-items: center center;
    }

    & > .table > table {
        text-align: center;
        width: 85%;
        height: 100%;
        margin: 0;
        padding: 0;
        border-collapse: collapse;
        & > thead > tr {
            width: 100%;
            height: 55px;
        }
        & > thead > tr > th {
            margin: 0;
            padding: 0;
            background-color:  #2f2f49;
            color: white;
            border: 2px solid white;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        & > tbody > tr {
            width: 100%;
            height: 55px;
        }
        & > tbody > tr > td {
            margin: 0;
            padding: 0;
            background-color: #F8F4EC;
            border: 2px solid white;
        }
    }
    & > button {
        width: 30%;
        font-size: 2rem;
    }
`;


const NoticeList = () => {

    console.log("AdminNoticeList 컴포넌트 렌더링 ~~~");

    const Navigate = useNavigate();
    


    //fetch 를 이용해서 데이터 준비
    const [NoticeVoList,setNoticeVoList] = useState([]);
    const loadNoticeVoList = () => {
        fetch("http://127.0.0.1:8888/app/notice/list")
        .then( resp => resp.json() )
        .then( (x) => { setNoticeVoList(x); })
        ;
    }

    useEffect(()=>{
        console.log("useEffect 호출됨~");
        loadNoticeVoList();
    }, []);


    return (
        <StyledNoticeListDiv>
            <div></div>
            <div className='notice_title'><h1>공지사항</h1></div>
            <div className='search'>검색기능</div>
            <div className='table'>
                <table>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    {
                            NoticeVoList.length === 0
                            ?
                            (<tr>
                                <td colSpan="4">로딩중...</td>
                            </tr>)
                            :
                            NoticeVoList.map( vo => <tr key={vo.no}>
                                    <td>{vo.no}</td>
                                    <td>{vo.title}</td>
                                    <td>{vo.enrollDate}</td>
                                    <td>{vo.hit}</td>
                                </tr>
                                )
                        }
                    </tbody>
                </table>
            </div>
           

        </StyledNoticeListDiv>
    );
};

export default NoticeList;
