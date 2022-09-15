import React from 'react'
import DashboardLayout from "@/Layouts/Dashboard";
import {Head} from '@inertiajs/inertia-react'

export default function SingleSarpras(props) {
    const image = "https://source.unsplash.com/random/500x300"

    return (
        <DashboardLayout props={props}>
            <Head title="Halaman Data Sarpras"/>

            <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200">
                    <h1 className="text-xl font-semibold">Data Sarpras: <span className="text-sky-500">{props.data.nama}</span></h1>
                </div>
            </div>

            <div className="bg-white mt-6 overflow-hidden shadow-sm sm:rounded-lg">
                <div className="p-6 bg-white border-b border-gray-200 space-y-4">
                    <img src={image} className="rounded-md w-[500px] mb-10 block mx-auto" alt="Sarpras Image"/>
                    <p>Nama: <span className="font-semibold">{props.data.nama}</span></p>
                    <p>Jumlah: <span className="font-semibold">{props.data.jumlah}</span></p>
                    <p>Harga Satuan: <span className="font-semibold">{props.data.harga_satuan}</span></p>
                    <p>Tanggal Pembelian: <span className="font-semibold">{props.data.tgl_pembelian}</span></p>
                    <p>Status: <span className="font-semibold">{props.data.status}</span></p>
                </div>
            </div>
        </DashboardLayout>
    )
}
