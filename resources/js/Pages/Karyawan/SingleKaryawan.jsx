import React from 'react'
import {Head} from '@inertiajs/inertia-react'
import DashboardLayout from "@/Layouts/Dashboard";

export default function SingleKaryawan(props){
    return (
        <DashboardLayout props={props}>
            <Head title="Halaman Data Karyawan" />

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200">
                    <h1 className="text-xl font-semibold">Data Karyawan: <span className="text-sky-500">{props.data.nama}</span></h1>
                </div>
            </div>

            <div className="bg-white mt-6 overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200 space-y-4">
                    <p>Nama Lengkap: <span className="font-semibold">{props.data.nama}</span></p>
                    <p>NIP: <span className="font-semibold">{props.data.nip}</span></p>
                    <p>No. Telpon: <span className="font-semibold">{props.data.no_telp}</span></p>
                    <p>Alamat: <span className="font-semibold">{props.data.alamat}</span></p>
                </div>
            </div>
        </DashboardLayout>
    )
}
