import React from 'react'
import DashboardLayout from "@/Layouts/Dashboard";
import {Link} from "@inertiajs/inertia-react";

export default function DataSarpras({data}) {
    const image = "https://source.unsplash.com/random/500x300"

    return (
        <div className="overflow-x-scroll">
            <table className="table mt-6 text-center table-compact w-full">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Gambar</th>
                    <th>Nama</th>
                    <th>Jumlah</th>
                    {route().current('sarpras.show') ? (
                        <>
                            <th>Harga Satuan</th>
                            <th>Tanggal Pembelian</th>
                        </>
                    ) : ("")}
                    <th>Status</th>
                    {route().current('sarpras.index') ? (
                        <th>Aksi</th>
                    ) : ('')}
                </tr>
                </thead>
                <tbody>
                {data.inventaris.length > 0 ? data.inventaris.map((data, key) => {
                    return (
                        <tr key={key}>
                            <th className="px-5 py-3">{data.id}</th>
                            <th className="p-auto">
                                <img src={image} alt="Gambar Sarpras" className="rounded-md w-auto"/>
                            </th>
                            <td className="px-5 py-3">{data.nama}</td>
                            <td className="px-5 py-3">{data.jumlah}</td>
                            {route().current('sarpras.show') ? (
                                <>
                                    <td className="px-5 py-3">{data.harga_satuan}</td>
                                    <td className="px-5 py-3">{data.tgl_pembelian}</td>
                                </>
                            ) : ("")}
                            <td className="px-5 py-3">{data.status}</td>
                            {route().current('sarpras.index') ? (
                                <td className="px-5 py-3">
                                    <Link href={route('sarpras.show', data.id)}
                                          className="px-3 py-2 text-white hover:bg-sky-700 ease-in-out duration-150 bg-sky-500 rounded-md">
                                        <i className="fa-solid fa-eye"></i>
                                    </Link>

                                    <Link href={route('sarpras.edit', data.id)}
                                          as="button"
                                          className="px-3 py-2 mx-2 text-white hover:bg-amber-700 ease-in-out duration-150 bg-amber-500 rounded-md">
                                        <i className="fa-solid fa-pencil"></i>
                                    </Link>

                                    <Link href={route('sarpras.destroy', data.id)} method="delete" as="button"
                                          className="px-3 py-2 modal-button text-white rounded-md bg-red-500 hover:bg-red-700 ease-in-out duration-150">
                                        <i className="fa-solid fa-trash"></i>
                                    </Link>
                                </td>
                            ) : ('')}
                        </tr>
                    )
                }) : (
                    <tr>
                        <td colSpan={7} className="p-6 text-center font-semibold text-xl">Tidak ada data yang dapat
                            ditampilkan
                        </td>
                    </tr>
                )}
                </tbody>
            </table>
        </div>
    )
}
