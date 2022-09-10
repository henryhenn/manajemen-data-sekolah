import React from 'react'
import {Head, Link} from '@inertiajs/inertia-react'
import DashboardLayout from "@/Layouts/Dashboard"
import DataSiswa from "@/Components/DataSiswa";

export default function Siswa(props) {
    return (
        <DashboardLayout props={props}>
            <Head title="Halaman Data Siswa"/>

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200">
                    <div className="flex flex-wrap justify-between">
                        <h1 className="text-xl font-semibold">Data Siswa</h1>

                        <Link href={route('siswa.create')}
                              className="p-3 w-auto text-white rounded-md bg-blue-500 hover:bg-blue-700 ease-in-out duration-150">
                            Tambah Data Siswa Baru
                        </Link>
                    </div>

                    {props.flash.message ? (
                        <>
                            <div className="alert alert-info shadow-lg mt-6">
                                <div>
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                         className="stroke-current flex-shrink-0 w-6 h-6">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2"
                                              d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                    <span>{props.flash.message}</span>
                                </div>
                            </div>
                        </>
                    ) : ""}

                    <DataSiswa data={props}/>
                </div>
            </div>
        </DashboardLayout>
    )
}
