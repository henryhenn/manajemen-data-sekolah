import React from 'react';
import {Head} from '@inertiajs/inertia-react';
import Navbar from '@/Components/Navbar';
import AppFeature from "@/Components/AppFeature";
import Footer from "@/Components/Footer";

export default function Welcome(props) {
    window.onscroll = function () {
        const appFeature = document.querySelector("#app-feature")
        const navbar = document.querySelector("#navbar")

        if(window.pageYOffset >= appFeature.offsetTop) {
            navbar.style.opacity = '0%'
        } else {
            navbar.style.opacity = '100%'
        }
    }

    return (
        <>
            <Head title="Welcome"/>

            <Navbar auth={props.auth}/>

            <div className="bg-sky-50">
                <div
                    style={{
                        backgroundImage: 'url(img/Lapangan-Outdoor.jpg)',
                        backgroundRepeat: 'no-repeat',
                        backgroundSize: 'cover'
                    }}
                >
                    <div className="min-h-screen flex mx-10 justify-end">
                        <h1 className="text-end font-extrabold text-sky-800 text-5xl mt-4 drop-shadow-lg">Selamat Datang
                            di <br/> Aplikasi Manajemen SekolahKu!</h1>
                    </div>
                </div>

                <div className="container mt-20 mx-10 pb-20" id="app-feature">
                    <AppFeature/>
                </div>

                <Footer/>
            </div>
        </>
    );
}
