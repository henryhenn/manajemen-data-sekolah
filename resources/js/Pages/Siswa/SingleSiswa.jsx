import React from 'react'
import {Head} from '@inertiajs/inertia-react'
import DashboardLayout from "@/Layouts/Dashboard";

export default function SingleSiswa(props){
    return (
        <DashboardLayout props={props}>
            <Head title="Halaman Data Siswa" />

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200">
                    <h1 className="text-xl font-semibold">Data Siswa: <span className="text-sky-500">{props.siswa.nama}</span></h1>
                </div>
            </div>

            <div className="bg-white mt-6 overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200 space-y-4">
                    <p>Nama Lengkap: <span className="font-semibold">{props.siswa.nama}</span></p>
                    <p>Kelas: <span className="font-semibold">{props.siswa.kelas.kelas}</span></p>
                    <p>NISN: <span className="font-semibold">{props.siswa.nisn}</span></p>
                    <p>No. Telpon: <span className="font-semibold">{props.siswa.no_telp}</span></p>
                    <p>Asal Sekolah: <span className="font-semibold">{props.siswa.asal_sekolah}</span></p>
                    <p>Alamat: <span className="font-semibold">{props.siswa.alamat}</span></p>
                </div>
            </div>
        </DashboardLayout>
    )
}
