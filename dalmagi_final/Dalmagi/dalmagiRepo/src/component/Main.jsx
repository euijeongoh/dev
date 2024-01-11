import React from 'react';
import {Routes, Route} from 'react-router-dom';
import ErrorPageNotFound from '../error/ErrorPageNotFound';
import HomeMain from '../home/HomeMain';
import MypageMain from '../mypage/MypageMain';
import SearchMain from '../search/SearchMain';
import AdminMain from '../admin/AdminMain';

const Main = () => {
    return (
        <Routes>
            <Route path='/' element={<HomeMain />}></Route>
            <Route path='/search/*' element={<SearchMain/>}></Route>
            <Route path='/mypage/*'></Route>
            <Route path='/member/*' element={<MypageMain />}></Route>
            <Route path='*' element={ <ErrorPageNotFound /> }></Route>
            <Route path='/admin/*' element={<AdminMain />}></Route>
            {/* <Route path='/admin/*' element={<AdminNoticeMain/>}></Route> */}
        </Routes>
    );
};

export default Main;