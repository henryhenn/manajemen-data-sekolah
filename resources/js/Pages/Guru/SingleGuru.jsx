import React from 'react'
import {Head} from '@inertiajs/inertia-react'
import DashboardLayout from "@/Layouts/Dashboard";

export default function SingleGuru(props){
    return (
        <DashboardLayout props={props}>
            <Head title="Halaman Data Guru" />

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200">
                    <h1 className="text-xl font-semibold">Data Guru: <span className="text-sky-500">{props.guru.nama}</span></h1>
                </div>
            </div>

            <div className="bg-white mt-6 overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200 space-y-4">
                    <p>Nama Lengkap: <span className="font-semibold">{props.guru.nama}</span></p>
                    <p>NIP: <span className="font-semibold">{props.guru.nip}</span></p>
                    <p>No. Telpon: <span className="font-semibold">{props.guru.no_telp}</span></p>
                    <p>Tanggal Mulai Mengajar: <span className="font-semibold">{props.guru.tgl_mulai_mengajar}</span></p>
                    <p>Alamat: <span className="font-semibold">{props.guru.alamat}</span></p>
                </div>
            </div>
        </DashboardLayout>
    )
}
