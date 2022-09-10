import React from 'react';
import {Head, Link} from '@inertiajs/inertia-react';
import DashboardLayout from "@/Layouts/Dashboard";
import DataSiswa from "@/Components/DataSiswa";
import DataGuru from "@/Components/DataGuru";
import DataKaryawan from "@/Components/DataKaryawan";
import DataInventaris from "@/Components/DataInventaris";

export default function Dashboard(props) {
    return (
        <DashboardLayout props={props}>
            <Head title="Halaman Dashboard"/>

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200">
                    <div tabIndex="0"
                         className="collapse mt-4 collapse-arrow border border-base-300 bg-base-100 rounded-box">
                        <div className="collapse-title text-xl font-semibold">
                            Data Siswa
                            <div className="collapse-content">
                                <DataSiswa data={props}/>
                            </div>
                            <Link href={route('siswa.index')}
                                  className="text-sm mt-4 block text-blue-500 hover:text-blue-700 ease-in-out duration-200">Lihat
                                Data Selengkapnya
                            </Link>
                        </div>
                    </div>
                </div>
            </div>

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg mt-6">
                <div className="p-6 bg-white border-b border-gray-200">
                    <div tabIndex="0"
                         className="collapse mt-4 collapse-arrow border border-base-300 bg-base-100 rounded-box">
                        <div className="collapse-title text-xl font-semibold">
                            Data Guru
                            <div className="collapse-content">
                                <DataGuru data={props}/>
                            </div>
                            <Link href={route('guru.index')}
                                  className="text-sm mt-4 block text-blue-500 hover:text-blue-700 ease-in-out duration-200">Lihat
                                Data Selengkapnya
                            </Link>
                        </div>
                    </div>
                </div>
            </div>

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg mt-6">
                <div className="p-6 bg-white border-b border-gray-200">
                    <div tabIndex="0"
                         className="collapse mt-4 collapse-arrow border border-base-300 bg-base-100 rounded-box">
                        <div className="collapse-title text-xl font-semibold">
                            Data Karyawan
                            <div className="collapse-content">
                                <DataKaryawan data={props}/>

                            </div>
                            <Link href={route('karyawan.index')}
                                  className="text-sm mt-4 block text-blue-500 hover:text-blue-700 ease-in-out duration-200">Lihat
                                Data Selengkapnya
                            </Link>
                        </div>
                    </div>
                </div>
            </div>

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg mt-6">
                <div className="p-6 bg-white border-b border-gray-200">
                    <div tabIndex="0"
                         className="collapse mt-4 collapse-arrow border border-base-300 bg-base-100 rounded-box">
                        <div className="collapse-title text-xl font-semibold">
                            Data Inventaris
                            <div className="collapse-content">
                                <DataInventaris data={props}/>

                            </div>
                            <Link href={route('inventaris.index')}
                                  className="text-sm mt-4 block text-blue-500 hover:text-blue-700 ease-in-out duration-200">Lihat
                                Data Selengkapnya
                            </Link>
                        </div>
                    </div>
                </div>
            </div>
        </DashboardLayout>
    )
}
