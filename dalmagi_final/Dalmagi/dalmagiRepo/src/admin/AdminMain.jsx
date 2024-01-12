import React from 'react';
import SearchAdminDelete from '../search/SearchAdminDelete';
import AdminMyPage from './AdminMyPage';
import { Route, Routes } from 'react-router-dom';
import SearchAdminEdit from '../search/SearchAdminEdit';
import AdminLogin from './AdminLogin';

const AdminMain = () => {
    return (
        <Routes>
            <Route path='/mypage/*' element={<AdminMyPage />}></Route>
            <Route path='/login/*' element={<AdminLogin />}></Route>
            <Route path='/edit/*' element={<SearchAdminEdit />}></Route>
            <Route path='/delete/*' element={<SearchAdminDelete />}></Route>
        </Routes>
    );
};

export default AdminMain;
