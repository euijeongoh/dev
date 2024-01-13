import React from 'react';
import styled from 'styled-components';

const StyledNoticeWriteDiv = styled.div`
    width: 100%;
    height: 100%;
    display: grid;
    place-items: center center;

    & > div {
        width: 100%;
        height: 100%;
        margin: auto;
    }

        & > .notice_wrap {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            /* background-color:antiquewhite; */

            & > .notice {
                width: 80%;
                height: 10%;
                display: flex;
                align-items: center;
                margin-top: 3%;
                margin-left: 20%;
                justify-content: flex-start;
                border-bottom: 2px solid black;
                font-size:24px;
                font-weight: bolder;
                /* background-color: greenyellow; */
            }

            & > .none1 {
                height: 5%;
                /* background-color: yellow; */
            }

            & > form {
                width: 60%;
                height: 80%;
                border: 2px solid black;
                /* background-color: beige; */

                & > .dropdown_head {
                    width: 100%;
                    height: 10%;
                    /* background-color: greenyellow; */

                    &> .date {
                        width: 50%;
                        height: 50%;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        font-size: 15px;
                        /* background-color: azure; */
                        }
        
                    & > .notice_title{
                        width: 50%;
                        height: 50%;
                        display: flex;
                        justify-content: center;
                        margin-left: 10%;
                        align-items: center;
                        /* background-color: aqua; */
                        }
                }

                    & > .none1 {
                    height: 5%;
                    /* background-color: yellow; */
                }

                & > .dropdown_content{
                    width: 940px;
                    height: 514px;
                    border-bottom: 1px solid;
                    /* background-color: red; */
                    
                    & > .content{
                        height: 60%;
                        width: 100%;
                        border: 1px solid darkgray;
                        background-color: lightgray;
                    }

                }
    
            }

        }

        
`;

const AdminNoticeWrite = () => {

    const str = sessionStorage.getItem("loginMemberVo");
    const vo = JSON

    return (
        <StyledNoticeWriteDiv>
            <div className='notice_wrap'>
                <div className='notice'>공지사항</div>
                <div className='none1'>빈칸</div>
                <form action="">
                    <div className="dropdown_head">
                        <div className="date">2024.01.14</div>
                        <div className="notice_title">[공지] 유저에게 알리는 소식</div>
                    </div>
                    <div className='none1'>빈칸</div>
                    <div className="dropdown_content">
                        <div className="content">
                            <textarea name="content" id="content" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                </form>
            </div>
        </StyledNoticeWriteDiv>
    );
};

export default AdminNoticeWrite;
