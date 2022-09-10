import React from 'react';

export default function AppFeature() {
    return (
        <div>
            <h1 className="text-5xl text-center font-extrabold text-sky-800">Fitur Utama</h1>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-14 justify-center mt-14">
                <div className="text-right block mb-4">
                    <div>
                        <h2 className="text-xl font-bold text-sky-900">Menggunakan Fitur SPA (Single Page
                            Application)</h2>
                        <div className="flex gap-6">
                            <p className="mt-8 leading-6 text-sm">
                                Dengan berkembangnya kemajuan teknologi, terutama dalam pembuatan website, fitur Single
                                Page
                                Application (SPA) sangat digemari banyak orang.
                                Dengan adanya fitur ini, browser tidak perlu me-<i>load</i> 1 halaman setiap kali adanya
                                request. Hanya dengan 1x <i>load</i> halaman, setelah itu
                                browser hanya akan me-<i>load</i> <i>component</i> pada halaman.
                            </p>
                            <div className="mt-8">
                                <h1 className="text-gray-400 text-6xl mt-4"><i
                                    className="fa-regular fa-file-image fa-xl"></i></h1>
                            </div>
                        </div>
                    </div>

                </div>
                <div className="text-left block mb-4">
                    <div>
                        <h2 className="text-xl font-bold text-sky-900">Full Responsive Layout</h2>
                        <div className="flex gap-6">
                            <div className="mt-8">
                                <h1 className="text-7xl text-gray-400"><i className="fa-solid fa-mobile"></i></h1>
                            </div>
                            <p className="mt-8 leading-6 text-sm">
                                Layout yang responsif sehingga aplikasi dapat berjalan lancar baik saat dijalankan pada
                                desktop,
                                tablet ataupun handphone.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-10 justify-center mt-8">
                <div className="text-right">
                    <h2 className="text-xl font-bold text-sky-900">Fitur CRUD Yang Mudah</h2>
                    <div className="flex gap-6">
                        <p className="mt-8 leading-6 text-sm">
                            Fitur CRUD pada aplikasi yang mudah, memungkinkan user untuk mengatur data dengan baik
                            dan
                            mempercepat proses kerja.
                        </p>
                        <div className="mt-8">
                            <h1 className="text-7xl text-gray-400"><i className="fa-solid fa-file-pen"></i></h1>
                        </div>
                    </div>
                </div>
                <div className="text-left">
                    <h2 className="text-xl font-bold text-sky-900">Tampilan Simpel. Sistem <i>Powerfull</i></h2>
                    <div className="flex gap-6">
                        <div className="mt-8">
                            <h1 className="text-7xl text-gray-400"><i className="fa-solid fa-code"></i></h1>
                        </div>
                        <p className="mt-8 leading-6 text-sm">
                            Tampilan yang simpel akan mempermudah user dalam menggunakan aplikasi. Dibuat dengan <a
                            href="https://tailwindcss.com/" className="hover:text-blue-600 ease-in-out duration-150 underline">TailwindCSS</a> sebagai <i>utility-first</i> CSS Framework,
                            tampilan aplikasi di-<i>desain</i> dengan <i>apik</i>.
                            Serta, menggunakan <a href="https://laravel.com/" className="hover:text-blue-600 ease-in-out duration-150 underline">Laravel</a> sebagai <i>backend framework</i>,
                            dipadukan dengan <a href="https://inertiajs.com/" className="hover:text-blue-600 ease-in-out duration-150 underline">Inertia.js</a>, menjadikan aplikasi ini mudah untuk
                            dikonfigurasikan.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    )
}
