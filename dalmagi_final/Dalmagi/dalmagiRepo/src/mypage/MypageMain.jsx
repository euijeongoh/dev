import React from 'react';
import MemberJoin from './MemberJoin';

const MypageMain = () => {
    return (
            <Routes>
                <Route path='/join' element={<MemberJoin />}/>
                <Route path='/edit' element={<MemberEdit />}/>
                <Route path='*' element={<ErrorPageNotFound />}/>
            </Routes>
    );
};

export default MypageMain;
