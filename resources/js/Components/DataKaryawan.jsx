import React from 'react'
import {Link, usePage} from "@inertiajs/inertia-react";

export default function DataKaryawan({data}) {
    return (
        <div className="overflow-x-scrollscroll">
            <table className="table mt-6 text-center table-compact w-full">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nama</th>
                    <th>NIP</th>
                    <th>No. Telp</th>
                    <th>Alamat</th>
                    {route().current('karyawan.index') ? (
                        <th>Aksi</th>
                    ) : ""}
                </tr>
                </thead>
                <tbody>
                {data.karyawan.length > 0 ? data.karyawan.map((data, key) => {
                    return (
                        <tr key={key}>
                            <th className="px-5 py-3">{data.id}</th>
                            <td className="px-5 py-3">{data.nama}</td>
                            <td className="px-5 py-3">{data.nip}</td>
                            <td className="px-5 py-3">{data.no_telp}</td>
                            <td className="px-5 py-3">{data.alamat}</td>
                            {route().current('karyawan.index') ? (
                                <td className="px-5 py-3">
                                    <Link href={route('karyawan.show', data.id)}
                                          className="px-3 py-2 text-white hover:bg-sky-700 ease-in-out duration-150 bg-sky-500 rounded-md">
                                        <i className="fa-solid fa-eye"></i>
                                    </Link>

                                    <Link href={route('karyawan.edit', data.id)}
                                          as="button"
                                          className="px-3 py-2 mx-2 text-white hover:bg-amber-700 ease-in-out duration-150 bg-amber-500 rounded-md">
                                        <i className="fa-solid fa-pencil"></i>
                                    </Link>

                                    <Link href={route('karyawan.destroy', data.id)} method="delete" as="button"
                                          className="px-3 py-2 modal-button text-white rounded-md bg-red-500 hover:bg-red-700 ease-in-out duration-150">
                                        <i className="fa-solid fa-trash"></i>
                                    </Link>
                                </td>
                            ) : ""}
                        </tr>
                    )
                }) : (
                    <tr>
                        <td colSpan={6} className="p-6 text-center font-semibold text-xl">Tidak ada data yang dapat
                            ditampilkan
                        </td>
                    </tr>
                )}
                </tbody>
            </table>
        </div>
    )
}
