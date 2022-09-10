import React from 'react'
import {Link} from "@inertiajs/inertia-react";

export default function DataGuru({data}) {
    return (
        <div className="overflow-x-scroll">
            <table className="table mt-6 text-center table-compact w-full">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nama</th>
                    <th>NIP</th>
                    <th>No. Telp</th>
                    {route().current('guru.index') ? (
                        <>
                            <th>Alamat</th>
                            <th>Aksi</th>
                        </>
                    ) : (
                        ""
                    )}
                </tr>
                </thead>
                <tbody>
                {data.guru.length > 0 ? data.guru.map((data, key) => {
                    return (
                        <tr key={key}>
                            <th className="px-4 py-5">{data.id}</th>
                            <td className="px-4 py-5">{data.nama}</td>
                            <td className="px-4 py-5">{data.nip}</td>
                            <td className="px-4 py-5">{data.no_telp}</td>
                            {route().current('guru.index') ? (
                                <>
                                    <td className="px-5 py-6">{data.alamat}</td>
                                    <td className="px-5 py-6">
                                        <Link href={route('guru.show', data.id)}
                                              className="px-3 py-2 text-white hover:bg-sky-700 ease-in-out duration-150 bg-sky-500 rounded-md">
                                            <i className="fa-solid fa-eye"></i>
                                        </Link>

                                        <Link href={route('guru.edit', data.id)}
                                              as="button"
                                              className="px-3 py-2 mx-2 text-white hover:bg-amber-700 ease-in-out duration-150 bg-amber-500 rounded-md">
                                            <i className="fa-solid fa-pencil"></i>
                                        </Link>

                                        <Link href={route('guru.destroy', data.id)} method="delete" as="button"
                                              className="px-3 py-2 modal-button text-white rounded-md bg-red-500 hover:bg-red-700 ease-in-out duration-150">
                                            <i className="fa-solid fa-trash"></i>
                                        </Link>
                                    </td>
                                </>
                            ) : (
                                ""
                            )}
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
